import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First Named Page',
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
              child: const Text('SecondNamed로 이동'),
              onPressed: () {
                Get.toNamed('/second');
                //! Get.offNamed('/second');  현재페이지를 지우고 이동하는 것
              },
            ),
          ],
        ),
      ),
    );
  }
}
