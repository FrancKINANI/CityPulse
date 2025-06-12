import 'package:flutter/material.dart';

class HelpNavigationBar extends StatelessWidget {
  const HelpNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Color(0xFF283F33), width: 1)),
        color: Color(0xFF1E2D26),
      ),
      padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 16),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Explore Button
          _buildNavButton(
            "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/f2bc856a-5fea-4787-a5d6-6abd43645d14",
            "Explore",
            isSelected: false,
          ),
          // Tours Button
          _buildNavButton(
            "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/642dfc13-69f0-4b08-a193-8f091ad77ee1",
            "Tours",
            isSelected: false,
          ),
          // Profile Button
          _buildNavButton(
            "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/1c9fd4bf-3ac9-463b-bfd1-a5b1903f6e23",
            "Profile",
            isSelected: false,
          ),
        ],
      ),
    );
  }

  Widget _buildNavButton(
    String imageUrl,
    String label, {
    bool isSelected = false,
  }) {
    return Expanded(
      child: IntrinsicHeight(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 4,
                  bottom: 8,
                  left: 45,
                  right: 45,
                ),
                height: 24,
                width: double.infinity,
                child: Image.network(imageUrl, fit: BoxFit.fill),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 1, left: 36, right: 36),
                child: Text(
                  label,
                  style: TextStyle(
                    color: isSelected
                        ? const Color(0xFFFFFFFF)
                        : const Color(0xFF9BBFAA),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
