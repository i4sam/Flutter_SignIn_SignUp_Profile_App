import 'package:flutter/material.dart';
import 'package:notify_app/pages/privacy_policy_page.dart';
import 'package:notify_app/pages/terms_of_use_page.dart';

Widget buildTermsAndPolicyRow(BuildContext context) {
  return Column(
    children: [
      Text(
        'By creating an account, you agree to our',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 12,
          color: Colors.grey,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: Size.zero,
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () {
              // Navigate to the Terms of Use page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TermsOfUsePage()),
              );
            },
            child: Text(
              'Terms of Use',
              style: TextStyle(
                fontSize: 12,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Text(
            'and',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: Size.zero,
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () {
              // Navigate to the Privacy Policy page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrivacyPolicyPage()),
              );
            },
            child: Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 12,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
