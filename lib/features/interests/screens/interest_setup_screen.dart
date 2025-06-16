import 'package:flutter/material.dart';
import 'package:citypulse/services/interest_service.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/config/app_theme.dart';
import 'package:citypulse/config/routes.dart';

class InterestSetupScreen extends StatefulWidget {
  const InterestSetupScreen({super.key});

  @override
  State<InterestSetupScreen> createState() => _InterestSetupScreenState();
}

class _InterestSetupScreenState extends State<InterestSetupScreen> {
  final InterestService _interestService = InterestService();
  final List<String> _selectedInterests = [];
  final List<String> _customInterests = [];
  final TextEditingController _customInterestController =
      TextEditingController();

  final List<String> _categories = [
    'Restaurants',
    'Monuments',
    'Hôtels',
    'Shopping',
    'Événements',
    'Culture',
    'Nature',
    'Activités',
    'Musées',
    'Bars',
    'Cafés',
    'Parcs',
    'Vie nocturne',
    'Sports',
    'Festivals',
    'Concerts',
    'Théâtres',
    'Cinémas',
  ];

  @override
  void dispose() {
    _customInterestController.dispose();
    super.dispose();
  }

  void _toggleInterest(String interest) {
    setState(() {
      if (_selectedInterests.contains(interest)) {
        _selectedInterests.remove(interest);
      } else {
        _selectedInterests.add(interest);
      }
    });
  }

  void _addCustomInterest() {
    final interest = _customInterestController.text.trim();
    if (interest.isNotEmpty && !_selectedInterests.contains(interest)) {
      setState(() {
        _selectedInterests.add(interest);
      });
      _customInterestController.clear();
    }
  }

  Future<void> _saveInterests() async {
    if (_selectedInterests.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Veuillez sélectionner au moins un intérêt',
            style: TextStyle(color: AppTheme.errorColor),
          ),
          backgroundColor: AppTheme.darkBackgroundColor,
        ),
      );
      return;
    }

    try {
      final userId = Provider.of<String>(context, listen: false);
      await _interestService.saveInterests(userId, _selectedInterests);

      // Redirection vers l'Explore
      Navigator.pushReplacementNamed(context, Routes.explore);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Erreur lors de la sauvegarde: $e',
            style: TextStyle(color: AppTheme.errorColor),
          ),
          backgroundColor: AppTheme.darkBackgroundColor,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuration des Intérêts', style: AppTheme.headingStyle),
        centerTitle: true,
        backgroundColor: AppTheme.primaryColor,
        foregroundColor: AppTheme.textPrimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppTheme.defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Sélectionnez vos intérêts', style: AppTheme.headline2),
            const SizedBox(height: AppTheme.defaultSpacing),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2,
                  crossAxisSpacing: AppTheme.defaultSpacing,
                  mainAxisSpacing: AppTheme.defaultSpacing,
                ),
                itemCount: _categories.length,
                itemBuilder: (context, index) {
                  final category = _categories[index];
                  return InterestCategoryChip(
                    category: category,
                    isSelected: _selectedInterests.contains(category),
                    onTap: () => _toggleInterest(category),
                  );
                },
              ),
            ),
            const SizedBox(height: AppTheme.defaultSpacing),
            TextField(
              controller: _customInterestController,
              decoration: InputDecoration(
                labelText: 'Ajouter un intérêt personnalisé',
                labelStyle: AppTheme.body2,
                suffixIcon: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: _addCustomInterest,
                  color: _customInterestController.text.isNotEmpty
                      ? AppTheme.secondaryColor
                      : AppTheme.textSecondaryColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppTheme.defaultRadius),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppTheme.defaultRadius),
                  borderSide: BorderSide(color: AppTheme.dividerColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppTheme.defaultRadius),
                  borderSide: BorderSide(color: AppTheme.secondaryColor),
                ),
              ),
              style: AppTheme.body1,
            ),
            const SizedBox(height: AppTheme.defaultSpacing),
            ElevatedButton(
              onPressed: _saveInterests,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: AppTheme.defaultSpacing * 2,
                ),
                backgroundColor: AppTheme.secondaryColor,
                foregroundColor: AppTheme.textPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppTheme.defaultRadius),
                ),
              ),
              child: Text(
                'Enregistrer mes intérêts',
                style: AppTheme.buttonText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget pour afficher les catégories
class InterestCategoryChip extends StatelessWidget {
  final String category;
  final bool isSelected;
  final VoidCallback onTap;

  const InterestCategoryChip({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? AppTheme.secondaryColor : AppTheme.cardColor,
          borderRadius: BorderRadius.circular(AppTheme.defaultRadius),
          border: Border.all(
            color: isSelected ? AppTheme.secondaryColor : Colors.transparent,
            width: 2,
          ),
        ),
        child: Center(
          child: Text(
            category,
            style: TextStyle(
              color: isSelected
                  ? AppTheme.textPrimaryColor
                  : AppTheme.textSecondaryColor,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
