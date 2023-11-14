import 'package:flutter/material.dart';

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
    return const Placeholder();
  }
}
