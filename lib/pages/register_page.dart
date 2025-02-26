import 'package:chat_app/components/button.dart';
import 'package:chat_app/components/text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  // functions
  final void Function()? onTap;

  const RegisterPage({
    super.key,
    required this.onTap,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text controllers
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final passConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF041C32),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 0),

              // logo
              Icon(
                Icons.message,
                size: 80,
                color: Color(0xFFECB365),
              ),

              // const SizedBox(height: 30),

              // welcome back message
              Text("Chat chat chat",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFECB365),
                    fontWeight: FontWeight.bold,
                  )),

              const SizedBox(height: 30),

              // Email Input
              MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false),

              // const SizedBox(height: 30),

              // Password Input
              MyTextField(
                  controller: passController,
                  hintText: 'Password',
                  obscureText: true),

              // const SizedBox(height: 10),

              // Password Confirm Input
              MyTextField(
                  controller: passConfirmController,
                  hintText: ' Confirm Password',
                  obscureText: true),

              const SizedBox(height: 20),

              MyButton(
                  onTap: () {
                    ;
                  },
                  text: "Sign Up"),

              const SizedBox(height: 5),

              Row(
                children: [
                  const Text("Already have an account?",
                      style: TextStyle(
                        color: Color(0xFFECB365),
                      )),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text("Sign In",
                        style: TextStyle(
                          color: Color(0xFFECB365),
                          fontWeight: FontWeight.bold,
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
