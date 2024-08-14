import 'package:flutter/material.dart';
import 'package:redesigned_outlook_app/components/side_menu.dart';
import 'package:redesigned_outlook_app/models/Email.dart';
import 'package:redesigned_outlook_app/screens/email/email_screen.dart';
import 'components/list_of_emails.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: _size.width > 1300 ? 2 : 4,
            child: const SideMenu(),
          ),
          Expanded(
            flex: _size.width > 1300 ? 3 : 5,
            child: const ListOfEmails(),
          ),
          Expanded(
            flex: _size.width > 1300 ? 8 : 10,
            child: EmailScreen(
              email: Email.empty(),
            ),
          ),
        ],
      ),
    );
  }
}
