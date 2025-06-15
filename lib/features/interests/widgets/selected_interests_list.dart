import 'package:flutter/material.dart';
import 'package:citypulse/models/user_interest.dart';

class SelectedInterestsList extends StatelessWidget {
  final List<UserInterest> interests;
  final VoidCallback onAddInterest;

  const SelectedInterestsList({
    super.key,
    required this.interests,
    required this.onAddInterest,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Vos intérêts',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add_circle_outline),
                  onPressed: onAddInterest,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: interests.map((interest) {
                return Chip(
                  label: Text(interest.interest),
                  deleteIcon: const Icon(Icons.close),
                  onDeleted: () {
                    // À implémenter : suppression de l'intérêt
                  },
                  backgroundColor: interest.isCustom
                      ? Colors.blue[100]
                      : Colors.grey[200],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
