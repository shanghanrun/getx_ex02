import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Second Page',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('뒤로 이동'),
              onPressed: () {
                Get.back();
              },
            ),
            ElevatedButton(
              child: const Text('Home으로 이동'),
              onPressed: () {
                Get.offAll(const Home()); //! 화살표 없애기(모든 페이지 지우고 이동)
              },
            ),
          ],
        ),
      ),
    );
  }
}
