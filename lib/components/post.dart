import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String title;
  final String author;
  final String content;
  final VoidCallback onClick;

  const PostCard({
    required this.title,
    required this.author,
    required this.content,
    required this.onClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => onClick(),
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
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
      ),
    );
  }
}
