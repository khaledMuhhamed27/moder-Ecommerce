import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/onboard_page.dart';
import 'package:flutter_application_1/provider/cart_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (create) => ClassProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AppOnBoardPage(),
      ),
    );
  }
}
