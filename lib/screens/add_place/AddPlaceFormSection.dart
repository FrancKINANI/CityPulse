import 'package:flutter/material.dart';

class AddPlaceFormSection extends StatelessWidget {
  final String label;
  final String hint;
  final ValueChanged<String> onChanged;

  const AddPlaceFormSection({
    super.key,
    required this.label,
    required this.hint,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 8),
          child: Text(
            label,
            style: const TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xFF264433),
          ),
          height: label == "Description" ? 144 : 32,
          width: double.infinity,
          child: TextField(
            style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 14),
            maxLines: label == "Description" ? null : 1,
            onChanged: onChanged,
            decoration: InputDecoration(
              hintText: hint,
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
