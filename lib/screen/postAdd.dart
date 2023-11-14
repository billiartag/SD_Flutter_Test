import 'package:flutter/material.dart';

class PostAddScreen extends StatefulWidget {
  final String token;

  const PostAddScreen({
    required this.token,
    super.key,
  });

  @override
  State<PostAddScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostAddScreen> {
  String message = '';

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add New Post',
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
        actions: [
          TextButton(
            onPressed: () async {
              await createPost();
            },
            child: Text(
              'Create',
              style: TextStyle(color: Theme.of(context).secondaryHeaderColor),
            ),
          ),
        ],
      ),
      body: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _titleController,
                  decoration: const InputDecoration(
                    labelText: "Title",
                  ),
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.words,
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: _contentController,
                  decoration: const InputDecoration(
                    labelText: "Content",
                  ),
                  keyboardType: TextInputType.text,
                  maxLines: 10,
                  textCapitalization: TextCapitalization.sentences,
                ),
                const Expanded(child: SizedBox()),
                Center(
                  child: Text(
                    message,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> createPost() async {
    bool result = false;
    if (result) {
      Navigator.pop(context, true);
    } else {
      setState(() {
        message = 'Eror!';
      });
    }
  }
}
