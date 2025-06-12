import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TourPrice extends StatelessWidget {
  final TextEditingController controller;
  final String? errorText;

  const TourPrice({super.key, required this.controller, this.errorText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Tour Price',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              prefixText: '\$ ',
              hintText: 'Enter price per person',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              errorText: errorText,
            ),
          ),
        ],
      ),
    );
  }
}
