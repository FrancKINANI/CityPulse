import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final String title;
  final String iconUrl;

  const ContactItem({super.key, required this.title, required this.iconUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).cardColor,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      width: double.infinity,
      child: Row(
        children: [
          InkWell(
            onTap: () {
              print('Pressed');
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).colorScheme.surface,
              ),
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(right: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 24,
                height: 24,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(iconUrl, fit: BoxFit.fill),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 1),
            child: Text(title, style: Theme.of(context).textTheme.bodyLarge),
          ),
        ],
      ),
    );
  }
}
