import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.help),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Getting Started Section
            _buildSection(
              context,
              title: l10n.gettingStarted,
              icon: Icons.rocket_launch,
              children: [
                _buildHelpItem(
                  l10n.creatingYourFirstPet,
                  l10n.creatingYourFirstPetDescription,
                ),
                _buildHelpItem(
                  l10n.addingPets,
                  l10n.addingPetsDescription,
                ),
                _buildHelpItem(
                  l10n.petTypes,
                  l10n.petTypesDescription,
                ),
              ],
            ),
            const SizedBox(height: 32),
            // Managing Pets Section
            _buildSection(
              context,
              title: l10n.managingPets,
              icon: Icons.pets,
              children: [
                _buildHelpItem(
                  l10n.viewingPetDetails,
                  l10n.viewingPetDetailsDescription,
                ),
                _buildHelpItem(
                  l10n.editingPetInformation,
                  l10n.editingPetInformationDescription,
                ),
                _buildHelpItem(
                  l10n.tags,
                  l10n.tagsDescription,
                ),
              ],
            ),
            const SizedBox(height: 32),
            // Tracking Section
            _buildSection(
              context,
              title: l10n.recordingData,
              icon: Icons.favorite,
              children: [
                _buildHelpItem(
                  l10n.weightRecords,
                  l10n.weightRecordsDescription,
                ),
                _buildHelpItem(
                  l10n.feedingRecords,
                  l10n.feedingRecordsDescription,
                ),
                _buildHelpItem(
                  l10n.medicalRecords,
                  l10n.medicalRecordsDescription,
                ),
              ],
            ),
            const SizedBox(height: 32),
            // Groups Section
            _buildSection(
              context,
              title: l10n.groupsAndOrganization,
              icon: Icons.group,
              children: [
                _buildHelpItem(
                  l10n.creatingGroups,
                  l10n.creatingGroupsDescription,
                ),
                _buildHelpItem(
                  l10n.groupFeeding,
                  l10n.groupFeedingDescription,
                ),
                _buildHelpItem(
                  l10n.tags,
                  l10n.tagsDescription,
                ),
              ],
            ),
            const SizedBox(height: 32),
            // Food Types Section
            _buildSection(
              context,
              title: l10n.foodTypes,
              icon: Icons.restaurant_menu,
              children: [
                _buildHelpItem(
                  l10n.managingFoodTypes,
                  l10n.managingFoodTypesDescription,
                ),
                _buildHelpItem(
                  l10n.usingFoodTypes,
                  l10n.usingFoodTypesDescription,
                ),
              ],
            ),
            const SizedBox(height: 32),
            // Data Management Section
            _buildSection(
              context,
              title: l10n.dataManagement,
              icon: Icons.storage,
              children: [
                _buildHelpItem(
                  l10n.exportingData,
                  l10n.exportingDataDescription,
                ),
                _buildHelpItem(
                  l10n.importingData,
                  l10n.importingDataDescription,
                ),
                _buildHelpItem(
                  l10n.localStorage,
                  l10n.localStorageDescription,
                ),
              ],
            ),
            const SizedBox(height: 32),
            // Customization Section
            _buildSection(
              context,
              title: l10n.customization,
              icon: Icons.palette,
              children: [
                _buildHelpItem(
                  l10n.themeColors,
                  l10n.themeColorsDescription,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required IconData icon,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                color: Theme.of(context).colorScheme.primary,
                size: 24,
              ),
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.grey.shade900,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        ...children,
      ],
    );
  }

  Widget _buildHelpItem(String title, String description) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade900,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade700,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
