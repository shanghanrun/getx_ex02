import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../home.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Next Page',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                '${(Get.arguments as User).name} : ${Get.arguments.age.toString()}'),
            ElevatedButton(
              child: const Text('Home으로 이동'),
              onPressed: () {
                Get.offAllNamed('/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
