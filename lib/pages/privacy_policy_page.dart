import 'package:flutter/material.dart';
import 'package:notify_app/widgets/title_widget.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const TitleWidget(title: 'Privacy Policy', icon: Icons.privacy_tip),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget nunc eget libero egestas blandit. Integer vitae purus ac sapien sagittis lacinia. Sed at mauris eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris id velit nec metus consequat pulvinar nec nec ipsum. Nulla facilisi.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed vestibulum dignissim ipsum, nec laoreet quam eleifend nec. Donec ac tincidunt lorem. In hac habitasse platea dictumst. Aliquam erat volutpat. Fusce vehicula nulla nec ipsum ultricies, sed condimentum mauris consectetur. Suspendisse non odio est.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Nullam vitae lectus urna. Integer ultrices tellus eu urna vestibulum, vitae efficitur purus placerat. Duis vestibulum erat sit amet ipsum iaculis, eget feugiat eros iaculis. Donec vitae leo ac magna viverra sodales et at justo. Proin aliquam malesuada fermentum. Sed posuere felis eu tincidunt mattis. Morbi a risus vel est venenatis malesuada sit amet eget tellus.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Sed vel malesuada velit. Sed lacinia, justo eget posuere fermentum, nunc justo placerat neque, in euismod risus dolor et tellus. Vivamus in odio et odio feugiat pellentesque. Nulla vitae neque nec nulla gravida pellentesque. Nam eget felis a lorem varius tristique. Donec dignissim, dolor vel lobortis efficitur, mi orci commodo est, eu vehicula ipsum nulla et purus. ',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'By accessing or using the app, you agree to the terms of this Privacy Policy.',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
