import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cat_provider.dart';
import '../utils/string_utils.dart';
import 'tabs/cat_info_tab.dart';
import 'tabs/medical_history_tab.dart';
import 'tabs/weight_records_tab.dart';
import 'tabs/feeding_records_tab.dart';

class CatDetailPage extends StatefulWidget {
  final String catId;

  const CatDetailPage({super.key, required this.catId});

  @override
  State<CatDetailPage> createState() => _CatDetailPageState();
}

class _CatDetailPageState extends State<CatDetailPage> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    final catProvider = Provider.of<CatProvider>(context);
    final cat = catProvider.getCatById(widget.catId);

    if (cat == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Cat Not Found')),
        body: const Center(child: Text('Cat not found')),
      );
    }

    final tabs = [
      CatInfoTab(catId: widget.catId),
      MedicalHistoryTab(catId: widget.catId),
      WeightRecordsTab(catId: widget.catId),
      FeedingRecordsTab(catId: widget.catId),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(cat.icon, style: const TextStyle(fontSize: 24)),
            const SizedBox(width: 8),
            Text(StringUtils.getFirstTwoWords(cat.name)),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Container(
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTabIndicator(0, 'Info', _currentPage == 0),
                _buildTabIndicator(1, 'Medical', _currentPage == 1),
                _buildTabIndicator(2, 'Weight', _currentPage == 2),
                _buildTabIndicator(3, 'Feeding', _currentPage == 3),
              ],
            ),
          ),
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        itemCount: tabs.length,
        itemBuilder: (context, index) => tabs[index],
      ),
    );
  }

  Widget _buildTabIndicator(int index, String label, bool isActive) {
    return GestureDetector(
      onTap: () {
        _pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        decoration: BoxDecoration(
          color: isActive
              ? Theme.of(context).colorScheme.primary
              : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.grey,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
