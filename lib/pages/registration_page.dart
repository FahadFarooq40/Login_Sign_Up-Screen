import 'package:car_haina/components/my_button.dart';
import 'package:car_haina/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  final void Function()? onTap;

  const RegistrationPage({super.key, required this.onTap});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController ConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/car_logo.png',
              width: 400,
              height: 300,
              color: colorScheme.inversePrimary,
            ),
            Text(
              "Let create an account for you  ",
              style: TextStyle(
                fontSize: 16,
                color: colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 10),
            MyTextField(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),
            const SizedBox(height: 15),
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 15),
            MyTextField(
              controller: ConfirmController,
              hintText: 'Confirm Pasword',
              obscureText: true,
            ),
            const SizedBox(height: 10),
            MyButton(
              text: "Sign Up",
              onTap: () {},
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'already have an account? ',
                  style: TextStyle(color: colorScheme.inversePrimary),
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Login Now',
                    style: TextStyle(
                      color: colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
