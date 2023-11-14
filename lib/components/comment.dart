import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  final String author;
  final String content;

  const CommentCard({
    required this.author,
    required this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              author,
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            const Divider(),
            Text(
              content,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
