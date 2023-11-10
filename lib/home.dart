import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/normal/first.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('라우트관리 홈')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('First로 이동'),
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (_) => const FirstPage()));
                Get.to(const FirstPage());
              },
            ),
            ElevatedButton(
              child: const Text('FirstNamed로 이동'),
              onPressed: () {
                Get.toNamed('/first');
                // Navigator.of(context).pushNamed('/first');
              },
            ),
            ElevatedButton(
              child: const Text('Arguments 전달'),
              onPressed: () {
                Get.toNamed('/next', arguments: User(name: 'Tom', age: 30));
              },
            ),
            ElevatedButton(
              child: const Text('동적Url, parameter 전달'),
              onPressed: () {
                Get.toNamed('/user/1234?name=홍길동&age=22');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String? name;
  int? age;
  User({this.name, this.age});
}
