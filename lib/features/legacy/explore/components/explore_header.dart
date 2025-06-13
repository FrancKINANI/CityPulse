import 'package:flutter/material.dart';

class ExploreHeader extends StatelessWidget {
  const ExploreHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF112116),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              'Explore',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            icon: Image.network(
              "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/9e9f6fef-45a5-43b2-ad75-66f858106d1d",
              width: 24,
              height: 24,
              fit: BoxFit.fill,
            ),
            onPressed: () {
              // TODO: Implement search action
              print('Search pressed');
            },
          ),
        ],
      ),
    );
  }
}
