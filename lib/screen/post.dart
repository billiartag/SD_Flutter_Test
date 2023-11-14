import 'package:flutter/material.dart';
import 'package:sd_flutter_test/components/comment.dart';

class PostScreen extends StatefulWidget {
  final String token;
  final String title;
  final String content;
  final String author;

  const PostScreen({
    required this.token,
    required this.title,
    required this.content,
    required this.author,
    super.key,
  });

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Post | ${widget.title}',
          style: TextStyle(color: Theme.of(context).secondaryHeaderColor),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).secondaryHeaderColor,
          ),
        ),
      ),
      body: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        widget.author,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Divider(),
                      const SizedBox(height: 8),
                      Text(
                        widget.content,
                        maxLines: 10,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Comments',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      ListView.separated(
                        itemCount: 15,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => CommentCard(
                          content: 'Content',
                          author: 'Author',
                        ),
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(8),
          color: Theme.of(context).highlightColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: TextField(
                  controller: _commentController,
                  decoration: const InputDecoration(
                    labelText: "Comment",
                  ),
                  keyboardType: TextInputType.text,
                  maxLines: 1,
                  textCapitalization: TextCapitalization.sentences,
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Theme.of(context).secondaryHeaderColor,
                ),
                child: const Text(
                  "Send",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
