import 'package:flutter/material.dart';
import 'contact_item.dart';

class HelpContactSection extends StatelessWidget {
  const HelpContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Text(
            "Contact Us",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        const ContactItem(
          title: "Email Support",
          iconUrl:
              "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/3a8e9494-a0d5-4a5f-8cf5-ef6c475dddc5",
        ),
        const ContactItem(
          title: "Feedback",
          iconUrl:
              "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/e01c7afe-dd31-4069-ba3e-c10558b0d85f",
        ),
      ],
    );
  }
}
