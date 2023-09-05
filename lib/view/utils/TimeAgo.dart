import 'package:flutter/material.dart';

class TimeAgoWidget extends StatelessWidget {
  final String timestamp;

  TimeAgoWidget({required this.timestamp});

  String getTimeAgo(String timestamp) {
    print(timestamp);
    final now = DateTime.now();
    final parsedTimestamp = DateTime.parse(timestamp);
    final difference = now.difference(parsedTimestamp);

    if (difference.inSeconds < 60) {
      return '${difference.inSeconds} seconds ago';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hours ago';
    } else if (difference.inDays == 1) {
      return '1 day ago';
    } else {
      return '${difference.inDays} days ago';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(getTimeAgo(timestamp));
  }
}
