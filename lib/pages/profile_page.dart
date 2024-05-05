import 'package:flutter/material.dart';
import 'package:notify_app/widgets/button_widget.dart';

class ProfilePage extends StatefulWidget {
  final String username;
  const ProfilePage({super.key, required this.username});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = _isDarkMode ? ThemeData.dark() : ThemeData.light();
    return Theme(
      data: theme,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CircleAvatar(
                radius: 130,
                backgroundColor: Color.fromARGB(255, 219, 226, 232),
                child: CircleAvatar(
                  radius: 120,
                  backgroundColor: Color.fromARGB(255, 163, 190, 211),
                  backgroundImage: AssetImage('assets/images/logo_image.png'),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 15, 10),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.verified_rounded,
                        color: Colors.blue,
                        size: 35.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Hello, ${widget.username}!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: theme.textTheme.bodyLarge?.color,
                ),
              ),
              const SizedBox(height: 24),
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text('Edit Profile'),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Editing profile is not available at the momment!',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.brightness_6),
                title: Text(_isDarkMode
                    ? 'Switch to Light Mode'
                    : 'Switch to Dark Mode'),
                onTap: _toggleTheme,
              ),
              ListTile(
                leading: const Icon(Icons.lock),
                title: const Text('Change Password'),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                          'Changing password is not available at the momment!'),
                    ),
                  );
                },
              ),
              const SizedBox(height: 24),
              ButtonWidget(text: 'Log Out', onPress: () {}),
              const SizedBox(height: 24),
              Text(
                'Feedback',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: theme.textTheme.bodyLarge?.color,
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Tell us your thoughts",
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
                textInputAction: TextInputAction.done,
              ),
              const SizedBox(height: 16),
              ButtonWidget(text: 'Send Feedback', onPress: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
