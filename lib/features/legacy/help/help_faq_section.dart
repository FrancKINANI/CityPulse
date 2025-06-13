import 'package:flutter/material.dart';
import 'faq_item.dart';

class HelpFaqSection extends StatelessWidget {
  const HelpFaqSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: const Text(
            "Frequently Asked Questions",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const FaqItem(
          title: "Creating Tours",
          description: "Learn how to create and customize your own tours.",
          iconUrl:
              "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/be91ee0d-7c4f-4cfa-a400-ac211a0d1cf8",
        ),
        const FaqItem(
          title: "Social Interactions",
          description:
              "Find out how to connect with other users and share experiences.",
          iconUrl:
              "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/6a03e32a-1552-47c8-bdb7-ede7577913ed",
        ),
        const FaqItem(
          title: "User Roles",
          description:
              "Understand the different roles and permissions within the app.",
          iconUrl:
              "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/58967f93-97f0-45e5-8a26-565185eb7c84",
        ),
        const FaqItem(
          title: "General Inquiries",
          description:
              "Get answers to common questions about app features and functionality.",
          iconUrl:
              "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/20333492-9196-41a6-9da3-d138072f289f",
        ),
      ],
    );
  }
}
