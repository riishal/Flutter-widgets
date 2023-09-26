import 'package:flutter/material.dart';
import 'package:flutter_30_widgets/Homepage.dart';
import 'package:flutter_30_widgets/provider/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<WidgetsProvider>(
      create: (context) => WidgetsProvider(),
      child: MaterialApp(
        theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
