import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Navigator Example', home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String result = 'لا يوجد نتيجة بعد';

  void _navigateToSecondPage() async {
    // استخدم Navigator.push و انتظر النتيجة
    final data = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SecondPage()),
    );

    // استقبل البيانات وحدث الواجهة
    if (data != null) {
      setState(() {
        result = data;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الصفحة الرئيسية')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(result, style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _navigateToSecondPage,
              child: const Text('اذهب إلى الصفحة الثانية'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الصفحة الثانية')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'مرحبًا من الصفحة الثانية!',
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // رجع بيانات للشاشة السابقة
                Navigator.pop(context, 'تم اختيار القيمة من الصفحة الثانية');
              },
              child: const Text('رجوع مع نتيجة'),
            ),
          ],
        ),
      ),
    );
  }
}
