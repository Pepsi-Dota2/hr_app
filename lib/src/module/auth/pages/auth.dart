import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/core/constant/app_image.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/model/user_auth_model.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/core/service/token_storage.dart';
import 'package:hr_app/src/core/widget/elevented_button.dart';
import 'package:hr_app/src/core/widget/input_form.dart';
import 'package:hr_app/src/core/widget/input_form_password.dart';
import 'package:hr_app/src/module/auth/cubit/auth_cubit.dart';

@RoutePage()
class AuthPage extends StatelessWidget implements AutoRouteWrapper {
  const AuthPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => AuthCubit(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
    final cubit = context.read<AuthCubit>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) async {
          if (state.status == Status.loading) {
            const Center(child: CircularProgressIndicator());
          } else if (state.status == Status.success) {
            final role = await UserRole.getRole();
            if (!context.mounted) return;

            if (role == '2') {
              await context.router.replace(const DashboardAdminRoute());
            } else {
              await context.router.replace(const DashboardRoute());
            }
          } else if (state.status == Status.failure) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login failed"), backgroundColor: Colors.red));
          }
        },
        builder: (context, state) {
          return Form(
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
                      controller: emailController,
                      name: 'user_email',
                      label: 'Email Address',
                      hintText: 'Enter your email',
                      borderRadius: 16.0,
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: const Icon(Icons.email),
                    ),
                    Gap(10),
                    InputFormPassword(
                      name: 'user_password',
                      label: 'Password',
                      controller: passwordController,
                      isPassword: true,
                      prefixIcon: const Icon(Icons.lock),
                    ),
                    Gap(10),
                    ReusableElevatedButton(
                      label: "Login",
                      onPressed: () {
                        final auth = UserAuthModel(user_email: emailController.text, user_password: passwordController.text);
                        if (loginFormKey.currentState!.validate()) {
                          cubit.login(auth);
                        }
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
          );
        },
      ),
    );
  }
}
