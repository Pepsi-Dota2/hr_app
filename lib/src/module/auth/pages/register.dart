import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/core/constant/app_image.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/core/widget/elevented_button.dart';
import 'package:hr_app/src/core/widget/form_drop_down.dart';
import 'package:hr_app/src/core/widget/input_form.dart';
import 'package:hr_app/src/core/widget/input_form_password.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController empIDController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: registerFormKey,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Image.asset(AppImage.logoApp, width: 200),
                  Gap(10),
                  InputForm(
                    controller: empIDController,
                    name: 'name_1',
                    label: 'Employee ID',
                    hintText: 'Enter your ID',
                    borderRadius: 16.0,
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: const Icon(Icons.email),
                  ),
                  Gap(10),
                  InputForm(
                    controller: emailController,
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
                  InputForm(
                    controller: nameController,
                    name: 'name_1',
                    label: 'User name',
                    hintText: 'Enter your name',
                    borderRadius: 16.0,
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: const Icon(Icons.person),
                  ),
                  Gap(10),
                  CustomDropdown(
                    name: 'department',
                    items: ['IT', 'HR'],
                    initialValue: 'IT',
                    hintText: "Select your department",
                    getLabel: (item) {
                      return item;
                    },
                  ),
                  Gap(10),
                  ReusableElevatedButton(label: "Register", onPressed: () {}, backgroundColor: Colors.blueAccent, textColor: Colors.white),
                  Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      Gap(4),
                      InkWell(
                        onTap: () {
                          context.router.push(AuthRoute());
                        },
                        child: Text("login", style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
