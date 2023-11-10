import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'second.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First Page',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('뒤로가기'),
              onPressed: () {
                Get.back();
              },
            ),
            ElevatedButton(
              child: const Text('Second로 이동'),
              onPressed: () {
                Get.to(const SecondPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
