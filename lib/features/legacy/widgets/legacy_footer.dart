import 'package:flutter/material.dart';

class LegacyFooter extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;

  const LegacyFooter({
    Key? key,
    required this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: onTap != null
          ? TextButton(
              onPressed: onTap,
              child: Text(
                text,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            )
          : Text(
              text,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
    );
  }
}
