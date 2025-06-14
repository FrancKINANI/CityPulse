import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              width: 24,
              height: 24,
              child: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
            const Text(
              "Notifications",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 7,
                  bottom: 7,
                  left: 12,
                  right: 12,
                ),
                width: double.infinity,
                color: Theme.of(context).colorScheme.primary,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        print('Pressed All');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 5,
                        ),
                        margin: const EdgeInsets.only(right: 12),
                        child: Text(
                          "All",
                          style: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSecondary,
                              ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('Pressed Mentions');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 5,
                        ),
                        margin: const EdgeInsets.only(right: 12),
                        child: Text(
                          "Mentions",
                          style: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSecondary,
                              ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('Pressed Likes');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 5,
                        ),
                        child: Text(
                          "Likes",
                          style: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSecondary,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildNotificationItem(
                        context,
                        "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/a82bdad6-5742-4455-911b-028aa9380787",
                        "Sophia Carter liked your post",
                        "1d",
                      ),
                      _buildNotificationItem(
                        context,
                        "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/8f08c1c2-5e47-4f1a-a91f-018342bf74f9",
                        "Ethan Walker commented on your post",
                        "2d",
                      ),
                      _buildNotificationItem(
                        context,
                        "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/76580698-799d-4257-9624-08a0fa046808",
                        "Isabella Bennett mentioned you in a comment",
                        "3d",
                      ),
                      _buildNotificationItem(
                        context,
                        "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/998a0c6d-ab10-4202-ac2f-09bbb10874fb",
                        "Liam Harper liked your post",
                        "4d",
                      ),
                      _buildNotificationItem(
                        context,
                        "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/0f3eae6f-b2ab-451b-bb0f-fd721c3ba0a9",
                        "Olivia Hayes commented on your post",
                        "5d",
                      ),
                      _buildNotificationItem(
                        context,
                        "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/94639e76-3575-4303-9d4b-70c32585f69d",
                        "New tour 'Historic Landmarks' published",
                        "3d",
                      ),
                      _buildNotificationItem(
                        context,
                        "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/05934149-a212-423c-a9a3-5c742c050079",
                        "Your booking for 'Art Gallery Tour' is confirmed!",
                        "4d",
                      ),
                      _buildNotificationItem(
                        context,
                        "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/307a0166-51d6-4447-9759-866418386348",
                        "Reminder: 'Food Tour' starts in 2 hours!",
                        "1w",
                      ),
                      SizedBox(height: 73),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNotificationItem(
    BuildContext context,
    String imageUrl,
    String title,
    String time,
  ) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      width: double.infinity,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            width: 56,
            height: 56,
            child: Image.network(imageUrl, fit: BoxFit.fill),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                Text(
                  time,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
