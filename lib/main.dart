import 'package:flutter/material.dart';
import 'package:flutter_login/login.dart';

void main()  => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login flutter',
      theme: ThemeData(

         primarySwatch: Colors.blue,

      ), 
      initialRoute: '/',
       routes: {
       '/': (context) => const LoginPage(),
      },
    );
  }
}

