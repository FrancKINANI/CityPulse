import 'package:flutter/material.dart';

class AddPlaceActionsSection extends StatelessWidget {
  final VoidCallback? onSave;
  final VoidCallback? onCancel;

  const AddPlaceActionsSection({super.key, this.onSave, this.onCancel});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: InkWell(
            onTap: onSave,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 12),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: const Color(0xFF38E07A),
              ),
              child: const Text(
                'Save',
                style: TextStyle(
                  color: Color(0xFF112116),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: onCancel,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 12),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: const Color(0xFFB0B0B0),
              ),
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Color(0xFF112116),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
