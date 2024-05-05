import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notify_app/pages/profile_page.dart';
import 'package:notify_app/pages/sign_up_page.dart';
import 'package:notify_app/widgets/button_widget.dart';
import 'package:notify_app/widgets/text_filed_widget.dart';
import 'package:notify_app/widgets/title_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key, this.onChange});
  final Function? onChange;

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _usernameController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    super.dispose();
  }

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
                  title: 'Welcome Back!',
                  icon: FontAwesomeIcons.fire,
                ),
                const SizedBox(height: 16),
                TextFieldWidget(
                  icon: FontAwesomeIcons.envelope,
                  label: 'Email',
                  hintText: 'Enter your email',
                  controller: _usernameController,
                ),
                const SizedBox(height: 16),
                const TextFieldWidget(
                  icon: FontAwesomeIcons.lock,
                  label: 'Password',
                  hintText: 'Enter your password',
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                ButtonWidget(
                  text: 'Sign In',
                  onPress: () {
                    final String username = _usernameController.text;
                    if (widget.onChange != null) {
                      widget.onChange!(username);
                    }
                    if (username.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content:
                              Text('Please enter your email and password.'),
                        ),
                      );
                      return;
                    }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfilePage(
                                  username: username,
                                )));
                  },
                ),
                const SizedBox(height: 16),
                buildSignUpButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSignUpButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don\'t have an account? ',
          style: TextStyle(fontSize: 14),
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
              MaterialPageRoute(builder: (context) => const SignUpPage()),
            );
          },
          child: const Text(
            'Create an Account',
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
