import 'package:flutter/material.dart';
import 'package:tester/common_widgets.dart/custom_button.dart';
import 'package:tester/common_widgets.dart/custom_text_formfield.dart';
import 'package:tester/features/login/login_delliew.dart';
import 'package:tester/util/value_validator.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _confirmPassController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: MyCustomClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://oldtowndesigngroup.com/wp-content/uploads/2022/12/aberdeen-model-3944-Pitscottie-59-scaled-uai-2560x1706.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Dwellio',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Signup',
                          style: Theme.of(
                            context,
                          ).textTheme.headlineMedium!.copyWith(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        CustomTextFormField(
                          labelText: 'Email',
                          controller: _emailController,
                          validator: emailValidator,
                        ),

                        const SizedBox(height: 20),
                        CustomTextFormField(
                          labelText: 'Password',
                          controller: _passController,
                          validator: notEmptyValidator,
                          suffixIconData: Icons.visibility_off,
                        ),
                        const SizedBox(height: 20),

                        CustomTextFormField(
                          labelText: 'Confirm password',
                          controller: _confirmPassController,
                          validator: notEmptyValidator,
                          suffixIconData: Icons.visibility_off,
                        ),
                        const SizedBox(height: 20),

                        CustomTextFormField(
                          labelText: 'Phone',
                          controller: _phoneController,
                          validator: notEmptyValidator,
                          suffixIconData: Icons.visibility_off,
                        ),

                        const SizedBox(height: 5),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text('''Already have account! Signin?'''),
                          ),
                        ),

                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.center,
                          child: CustomButton(
                            inverse: true,
                            onPressed: () {},
                            label: 'Signup',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
