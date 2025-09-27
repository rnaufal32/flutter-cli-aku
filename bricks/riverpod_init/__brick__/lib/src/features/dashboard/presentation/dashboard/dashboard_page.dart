import 'package:flutter/material.dart';
import 'widgets/user_name_text.dart';

class DashboardPage extends StatelessWidget {
  final String userName;
  const DashboardPage({Key? key, required this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: UserNameText(userName: userName),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton.icon(
          icon: const Icon(Icons.logout),
          label: const Text('Logout'),
          onPressed: () {
            // TODO: Implement logout logic
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Logout pressed')),
            );
          },
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(48),
          ),
        ),
      ),
    );
  }
}
