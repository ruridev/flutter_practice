import 'package:flutter/material.dart';

import 'app02/chat_screen.dart';

class App02 extends StatelessWidget {
  const App02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FriendlyAppChat',
      home: ChatScreen(),
    );
  }
}
