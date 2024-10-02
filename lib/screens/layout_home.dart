import 'package:flutter/material.dart';
import 'package:get/get.dart';



class LayoutHome extends StatelessWidget {
  LayoutHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: GestureDetector(
                onTap: (){
                  Get.toNamed('/layout_plant_list');
                },
                child: SizedBox(
                  width: 600,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 48,
                        width: 48,
                        child: Placeholder(),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        '오늘 물줘야 하는 식물',
                        style: TextStyle(
                            fontFamily: 'MyFontFamily',
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 8.0),
                      SizedBox(
                        height: 300,
                        width: double.infinity,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: ListView(
                            children: [
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}
