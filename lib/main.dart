// import 'package:e_commerce/screens/start_up/splash_screen.dart';
// import 'package:e_commerce/screens/test_page.dart';
// import 'package:flutter/material.dart';

// import 'screens/test_page2.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'E-Commerce App',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const TestPage(),
//     );
//   }
// }
import 'package:e_commerce/to%20do%20.dart';
import 'package:flutter/material.dart';


void main(){
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: TodoListPage(),
    );
}}