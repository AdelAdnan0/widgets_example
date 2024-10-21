import 'package:flutter/material.dart';
import 'package:widgets_example/widgets/custom_textfields.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Welcome Back!",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 50,
                  color: Colors.white, // Set the background color to white
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text("Sign in"),
                      ),
                      const SizedBox(width: 10),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: const Text("Sign up"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Create your account",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),

                // Using the custom TextFields
                CustomTextField(
                  controller: nameController,
                  label: "name",
                  hint: "input your name",
                  icon: Icons.person,
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: phoneController,
                  label: "phone",
                  hint: "input your phone",
                  icon: Icons.phone,
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: emailController,
                  label: "email",
                  hint: "email@example.com",
                  icon: Icons.email,
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: passwordController,
                  label: "password",
                  hint: "input your password",
                  icon: Icons.lock,
                  isObscure: true,
                ),

                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Sign Up"),
                ),
                const SizedBox(height: 20),
                const Text("or Sign Up with"),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Image.asset(
                        'assets/images/google_account_logo.png',
                        width: 40,
                        height: 40,
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 20),
                    IconButton(
                      icon: Image.asset(
                        'assets/images/google_account_logo.png',
                        width: 40,
                        height: 40,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
