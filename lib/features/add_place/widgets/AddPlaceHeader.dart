import 'package:flutter/material.dart';

class AddPlaceHeader extends StatelessWidget {
  const AddPlaceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        color: const Color(0xFF112116),
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 12, bottom: 12, right: 24),
              width: 24,
              height: 24,
              child: Image.network(
                "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/9f7c3698-6f6a-4d34-9f7b-1fd0e974b355",
                fit: BoxFit.fill,
              ),
            ),
            const Text(
              "Manage",
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
