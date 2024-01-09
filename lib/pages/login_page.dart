import 'package:chat_firebase/components/my_button.dart';
import 'package:chat_firebase/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void login() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(
              height: 50,
            ),
            //welcome text
            Text(
              'Welcome',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //email textfield
            MyTextField(
              hintText: 'Email',
              obscuretext: false,
              controller: _emailController,
            ),
            const SizedBox(
              height: 20,
            ),

            //password textfield
            MyTextField(
              hintText: 'Password',
              obscuretext: true,
              controller: _passwordController,
            ),
            const SizedBox(
              height: 25,
            ),

            //login button
            MyButton(
              text: 'Login',
              onTap: login,
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a User ? ",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                Text(
                  "Register now",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold),
                )
              ],
            )

            //register button
          ],
        ),
      ),
    );
  }
}
