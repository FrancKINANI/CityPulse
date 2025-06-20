import 'package:flutter/material.dart';

class TourImageUpload extends StatelessWidget {
  final List<String> imageUrls;
  final Function() onAddImage;
  final Function(int) onRemoveImage;

  const TourImageUpload({
    super.key,
    required this.imageUrls,
    required this.onAddImage,
    required this.onRemoveImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Tour Images', style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height: 16),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: imageUrls.length + 1,
            itemBuilder: (context, index) {
              if (index == imageUrls.length) {
                return InkWell(
                  onTap: onAddImage,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).dividerColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.add_photo_alternate,
                      size: 40,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                );
              }
              return Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(imageUrls[index], fit: BoxFit.cover),
                  ),
                  Positioned(
                    top: 4,
                    right: 4,
                    child: IconButton(
                      icon: const Icon(Icons.remove_circle, color: Colors.red),
                      onPressed: () => onRemoveImage(index),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
