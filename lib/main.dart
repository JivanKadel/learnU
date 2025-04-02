import 'package:flutter/material.dart';
import 'package:learn_u/commom/common_nav.dart';
import 'package:learn_u/pages/auth_page.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        // '/': (BuildContext context) => AuthPage(),
        '/': (BuildContext context) => MainScreen(),
      },
    );
  }
}
