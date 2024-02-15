import 'package:myapp33/Theme.dart';
import 'package:myapp33/home_page.dart';
import 'package:myapp33/login.dart';

import 'package:myapp33/models/Profile.dart';

import 'package:myapp33/models/contact.dart';
import 'package:myapp33/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
      theme: Mytheme.light(context),
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        Myroutes.Homepage: (context) => homepage(),
        Myroutes.login: (context) => login(),
        Myroutes.contact: (context) => contact(),
        Myroutes.profile: (context) => profile(),
      },
    );
  }
}
