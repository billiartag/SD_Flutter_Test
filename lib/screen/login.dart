import 'package:flutter/material.dart';
import 'package:sd_flutter_test/screen/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _loginEmailController = TextEditingController();
  final TextEditingController _loginPasswordController =
      TextEditingController();

  final TextEditingController _registerEmailController =
      TextEditingController();
  final TextEditingController _registerPasswordController =
      TextEditingController();
  final TextEditingController _registerNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(color: Theme.of(context).secondaryHeaderColor),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                TextField(
                  controller: _loginEmailController,
                  decoration: const InputDecoration(
                    labelText: "Email",
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: _loginPasswordController,
                  decoration: const InputDecoration(
                    labelText: "Password",
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                Center(
                  child: TextButton(
                    onPressed: () async {
                      await login();
                    },
                    style: TextButton.styleFrom(
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 8,
                      ),
                      backgroundColor: Theme.of(context).primaryColor,
                      foregroundColor: Theme.of(context).secondaryHeaderColor,
                    ),
                    child: const Text(
                      "Login",
                    ),
                  ),
                ),
                const SizedBox(height: 36),
                //
                const Center(
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                TextField(
                  controller: _registerEmailController,
                  decoration: const InputDecoration(
                    labelText: "Email",
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: _registerPasswordController,
                  decoration: const InputDecoration(
                    labelText: "Password",
                  ),
                  obscureText: true,
                ),
                TextField(
                  controller: _registerNameController,
                  decoration: const InputDecoration(
                    labelText: "Name",
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                Center(
                  child: TextButton(
                    onPressed: () async {
                      await register();
                    },
                    style: TextButton.styleFrom(
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 8,
                      ),
                      backgroundColor: Theme.of(context).primaryColor,
                      foregroundColor: Theme.of(context).secondaryHeaderColor,
                    ),
                    child: const Text(
                      "Register",
                    ),
                  ),
                ),
                //
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> login() async {
    String token = '';
    goToHome(token);
  }

  Future<void> register() async {
    String token = '';
    goToHome(token);
  }

  void goToHome(String token) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(
          token: token,
        ),
      ),
    );
  }
}
