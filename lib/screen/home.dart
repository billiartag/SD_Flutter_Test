import 'package:flutter/material.dart';
import 'package:sd_flutter_test/components/post.dart';
import 'package:sd_flutter_test/screen/login.dart';
import 'package:sd_flutter_test/screen/post.dart';
import 'package:sd_flutter_test/screen/postAdd.dart';

class HomeScreen extends StatefulWidget {
  final String token;

  const HomeScreen({
    required this.token,
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: Theme.of(context).secondaryHeaderColor),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PostAddScreen(
                      token: widget.token,
                    ),
                  ),
                );
              },
              icon: Icon(
                Icons.add,
                color: Theme.of(context).secondaryHeaderColor,
              )),
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              icon: Icon(
                Icons.logout,
                color: Theme.of(context).secondaryHeaderColor,
              )),
        ],
      ),
      body: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: ListView.separated(
              itemCount: 15,
              itemBuilder: (context, index) => PostCard(
                title: 'Title',
                content: 'Content',
                author: 'Author',
                onClick: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PostScreen(
                      token: widget.token,
                      title: 'Title',
                      content: 'Content',
                      author: 'Author',
                    ),
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 8,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
