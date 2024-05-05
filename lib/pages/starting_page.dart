import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notify_app/pages/sign_in_page.dart';
import 'package:notify_app/widgets/loading_dots_widget.dart';
import 'package:notify_app/widgets/title_widget.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({super.key});

  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  @override
  void initState() {
    super.initState();
    _navigateToSignInPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TitleWidget(
                title: "Welcome Notify App",
                icon: FontAwesomeIcons.noteSticky,
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                width: 400,
                child: Image.asset('assets/images/welcome_image1.png'),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoadingDots(),
                  SizedBox(
                    height: 24,
                  ),
                  CircularProgressIndicator(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _navigateToSignInPage() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const SignInPage()));
  }
}
