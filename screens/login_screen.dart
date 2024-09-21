import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Greeting Text
              const Text(
                'Welcome back!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Email Textfield
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    label: Text('Email'),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
              ),
              // Password Textfield
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    label: Text('Password'),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
              ),
              // Elevated Button
              ElevatedButton(
                style: const ButtonStyle(
                  padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 50),
                  ),
                  backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                onPressed: () {},
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              // Sign up option
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  SizedBox(width: 5),
                  Text(
                    "Register Now!",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
              // Sign in with Google
              TextButton.icon(
                onPressed: () {},
                label: const Text('Sign In with Google'),
                icon: const Icon(Icons.person_outline_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
