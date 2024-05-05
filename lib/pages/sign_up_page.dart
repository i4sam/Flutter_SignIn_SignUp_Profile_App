import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notify_app/pages/sign_in_page.dart';
import 'package:notify_app/widgets/button_widget.dart';
import 'package:notify_app/widgets/terms_and_policy_row_widget.dart';
import 'package:notify_app/widgets/text_filed_widget.dart';
import 'package:notify_app/widgets/title_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const TitleWidget(
                  title: ' Create an Account',
                  icon: FontAwesomeIcons.heartCircleBolt,
                ),
                const SizedBox(height: 16),
                TextFieldWidget(
                  icon: FontAwesomeIcons.user,
                  label: 'Full Name',
                  hintText: 'Enter your full name',
                  controller: TextEditingController(),
                ),
                const SizedBox(height: 16),
                TextFieldWidget(
                  icon: FontAwesomeIcons.envelope,
                  label: 'Email',
                  hintText: 'Enter your email',
                  controller: TextEditingController(),
                ),
                const SizedBox(height: 16),
                TextFieldWidget(
                  icon: FontAwesomeIcons.lock,
                  label: 'Password',
                  hintText: 'Enter your password',
                  controller: TextEditingController(),
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                TextFieldWidget(
                  icon: FontAwesomeIcons.lock,
                  label: 'Confirm Password',
                  hintText: 'Re-enter your password',
                  controller: TextEditingController(),
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                ButtonWidget(
                  text: 'Create an account',
                  onPress: () {},
                ),
                const SizedBox(height: 16),
                buildTermsAndPolicyRow(context),
                const SizedBox(height: 12), 
                _buildSignInButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignInButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Already have an account? ',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: Size.zero,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignInPage()),
            );
          },
          child: const Text(
            'Sign In',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
