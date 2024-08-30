import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Placeholder(),
                ),
                SizedBox(width: 6),
                Text('아이러브플랜트',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black,)
                )
              ],
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),

                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
