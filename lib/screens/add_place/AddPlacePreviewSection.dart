import 'package:flutter/material.dart';

class AddPlacePreviewSection extends StatelessWidget {
  final String name;
  final String description;
  final String? imageUrl;

  const AddPlacePreviewSection({
    super.key,
    required this.name,
    required this.description,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF112116),
      padding: const EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 16),
      width: double.infinity,
      child: Row(
        children: [
          if (imageUrl != null && imageUrl!.isNotEmpty)
            Container(
              margin: const EdgeInsets.only(right: 16),
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[300],
                image: DecorationImage(
                  image: imageUrl!.startsWith('http')
                      ? NetworkImage(imageUrl!)
                      : AssetImage(imageUrl!) as ImageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    color: Color(0xFFB0B0B0),
                    fontSize: 14,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
