import 'package:flutter/material.dart';

class UserNameText extends StatelessWidget {
  final String userName;
  const UserNameText({Key? key, required this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Halo, $userName',
      style: const TextStyle(fontSize: 24),
    );
  }
}
