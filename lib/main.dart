import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kohr_admin/comboScreen.dart';
import 'package:kohr_admin/dashboard_screen.dart';
import 'package:kohr_admin/firebase_options.dart';
import 'package:kohr_admin/screens/auth/auth_handler.dart';
import 'package:kohr_admin/screens/auth/forgot_password.dart';
import 'package:kohr_admin/screens/auth/login_screen.dart';
import 'package:kohr_admin/screens/usermanagement/add_user.dart';
import 'package:kohr_admin/screens/usermanagement/user_management_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kohr Admin',
      theme: ThemeData(
        fontFamily: 'Sora',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff09254A),
          primary: const Color(0xff09254A),
        ),
        useMaterial3: false,
      ),
      // home: Comboscreen(),
        initialRoute: '/',
        routes: {
          '/': (context) => const AuthWrapper(),
          '/login': (context) => const LoginScreen(),
          '/dashboard': (context) => const DashBoard(),
          '/addUser': (context) => const AddUserScreen(),
          '/userManagement': (context) => const UserManagementScreen(),
          '/forgotPassword': (context) => const ForgotPasswordScreen(),
        },
    );
  }
}
