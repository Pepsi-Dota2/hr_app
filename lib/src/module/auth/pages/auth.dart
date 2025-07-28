import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/core/constant/app_image.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/core/widget/elevented_button.dart';
import 'package:hr_app/src/core/widget/input_form.dart';
import 'package:hr_app/src/core/widget/input_form_password.dart';

@RoutePage()
class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: loginFormKey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImage.logoApp, width: 200),
                Gap(10),
                InputForm(
                  controller: nameController,
                  name: 'name_1',
                  label: 'Email Address',
                  hintText: 'Enter your email',
                  borderRadius: 16.0,
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: const Icon(Icons.email),
                ),
                Gap(10),
                InputFormPassword(
                  name: 'password',
                  label: 'Password',
                  controller: passwordController,
                  isPassword: true,
                  prefixIcon: const Icon(Icons.lock),
                ),
                Gap(10),
                ReusableElevatedButton(
                  label: "Login",
                  onPressed: () {
                    context.router.push(HomeRoute());
                  },
                  backgroundColor: Colors.blueAccent,
                  textColor: Colors.white,
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do you have an account?"),
                    Gap(4),
                    InkWell(
                      onTap: () {
                        context.router.push(RegisterRoute());
                      },
                      child: Text("register", style: TextStyle(fontWeight: FontWeight.bold)),
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
