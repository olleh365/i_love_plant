import 'package:flutter/material.dart';

class LayoutCommon extends StatelessWidget {
  final Widget body;

  const LayoutCommon({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '아이러브플랜트',
                style: TextStyle(
                    fontFamily: 'MyFontFamily',
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded)),
            ],
          ),
        ),
        shape: const Border(
          bottom: BorderSide(
            color: Color(0xFFEEEEEE),
            width: 1,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              body,
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}