import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:sinibeli_mobile/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (_) {
          //* membuat objek Provider baru yang 
          //* akan membagikan instance CookieRequest dengan semua komponen yang ada di aplikasi.
          CookieRequest request = CookieRequest(); 
          return request;
        },
        child: MaterialApp(
          title: 'SiniBeli-mobile',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.teal,
            ).copyWith(secondary: const Color.fromARGB(255, 154, 225, 119)),
            useMaterial3: true,
          ),
          home: const LoginPage(),
        ));
  }
}
