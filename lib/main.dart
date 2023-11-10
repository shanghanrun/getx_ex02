import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';
import 'pages/named/firstnamed.dart';
import 'pages/named/nextpage.dart';
import 'pages/named/secondnamed.dart';
import 'pages/named/userpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/',
            page: () => const Home(),
            transition: Transition.downToUp),
        GetPage(
            name: '/first',
            page: () => const FirstNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: '/second',
            page: () => const SecondNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: '/next',
            page: () => const NextPage(),
            transition: Transition.zoom),
        GetPage(
            name: '/user/:uid',
            page: () => const UserPage(),
            transition: Transition.zoom),
      ],
      // routes: {
      //   '/': (context) => const Home(),
      //   '/first': (context) => const FirstNamedPage(),
      //   '/second': (context) => const SecondNamedPage(),
      // },
    );
  }
}
