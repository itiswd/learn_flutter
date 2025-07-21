import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'login_page.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: Size(375, 812), // تصميم مبني على iPhone X مثلاً
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const MyApp();
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Login',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
