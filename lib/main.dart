import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_plant/screens/layout_common.dart';
import 'package:i_love_plant/screens/layout_plant_list.dart';
import 'screens/layout_home.dart';


void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;

    return GetMaterialApp(
      title: 'main_title',
      home: const HomeScreen(),
      getPages: [
        //section_home 에서 Get.toNamed 추가 필요
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/layout_plant_list', page: () => LayoutPlantList()),
      ],
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutCommon(body: LayoutHome());
  }
}