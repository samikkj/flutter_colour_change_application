import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainerScreen extends StatelessWidget {
  ContainerScreen({Key? key}) : super(key: key);
  RxInt isClick = 0.obs;
  // var isClick = false.obs;
  void toggleFun() {
    isClick.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: toggleFun,
          child: Obx(
            () => Container(
              height: 400,
              width: 400,
              color: isClick.value == 0
                  ? Colors.amber
                  : isClick.value == 1
                      ? Colors.green
                      : isClick.value == 2
                          ? Colors.blue
                          : isClick.value == 3
                              ? Colors.blueAccent
                              : Colors.black,
              alignment: Alignment.center,
              child: Text('Container'),
            ),
          ),
        ),
      ),
    );
  }
}
