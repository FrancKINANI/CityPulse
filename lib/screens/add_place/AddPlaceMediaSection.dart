import 'package:flutter/material.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';

class AddPlaceMediaSection extends StatelessWidget {
  final VoidCallback? onUpload;
  final VoidCallback? onCamera;
  final VoidCallback? onRemove;
  final String? imageUrl;

  const AddPlaceMediaSection({
    super.key,
    this.onUpload,
    this.onCamera,
    this.onRemove,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
          child: const Text(
            'Media',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        IntrinsicHeight(
          child: Container(
            decoration: BoxDecoration(
              border: DashedBorder.fromBorderSide(
                dashLength: 15,
                side: const BorderSide(color: Color(0xFF356347), width: 2),
              ),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            padding: const EdgeInsets.only(
              top: 58,
              bottom: 58,
              left: 26,
              right: 26,
            ),
            margin: const EdgeInsets.all(16),
            width: double.infinity,
            child: Column(
              children: [
                if (imageUrl != null && imageUrl!.isNotEmpty)
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Image.network(imageUrl!, height: 100),
                      ),
                      TextButton.icon(
                        onPressed: onRemove,
                        icon: const Icon(Icons.delete, color: Colors.red),
                        label: const Text(
                          'Supprimer',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                IntrinsicHeight(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 24),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 9),
                          child: const Text(
                            'Upload Image',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 1),
                          width: double.infinity,
                          child: const Text(
                            'Add a visual representation of your place or event.',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: onUpload,
                      icon: const Icon(Icons.photo),
                      label: const Text('Galerie'),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton.icon(
                      onPressed: onCamera,
                      icon: const Icon(Icons.camera_alt),
                      label: const Text('Appareil photo'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
