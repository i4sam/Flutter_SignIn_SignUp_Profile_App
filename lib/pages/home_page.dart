import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notify_app/widgets/button_widget.dart';
import 'package:notify_app/widgets/title_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Notify App'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(FontAwesomeIcons.house), text: 'Home'),
              Tab(icon: Icon(FontAwesomeIcons.user), text: 'Profile'),
              Tab(icon: Icon(FontAwesomeIcons.noteSticky), text: 'Settings'),
            ],
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TitleWidget(
                  title: "Welcome to Notify App",
                  icon: FontAwesomeIcons.noteSticky,
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: 400,
                  child: Image.asset('assets/images/welcome_image1.png'),
                ),
                const SizedBox(height: 24),
                ButtonWidget(
                  text: 'Create your first note here!',
                  icon: FontAwesomeIcons.plus,
                  onPress: () {
                    Navigator.pushNamed(context, '/sign_in_page');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
