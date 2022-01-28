import 'package:amaris_test/src/controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterView extends StatelessWidget {
  CounterView({Key? key}) : super(key: key);

  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "assets/images/logo_amaris.png",
              width: Get.width * .30,
            ),
            Obx(
              () => Text(
                controller.counter.value.toString(),
                style: const TextStyle(
                    color: Colors.indigo,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  minWidth: 60,
                  height: 50,
                  onPressed: () {
                    controller.decrement();
                  },
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  color: Colors.indigo[800],
                  child: const Text(
                    "-",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 40),
                MaterialButton(
                  minWidth: 60,
                  height: 50,
                  onPressed: () {
                    controller.increment();
                  },
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  color: Colors.indigo[800],
                  child: const Text(
                    "+",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
