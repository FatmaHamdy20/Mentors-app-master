import 'package:flutter/material.dart';

import '../chat/pages/chat_page.dart';
import '../contact/pages/contact_page.dart';
import '../models/user_model.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/signup_screen.dart';

class Routes {
  static const String chat = 'chat';
  static const String profile = 'profile';

  static const String signupscreen = 'signupscreen';
  static const String loginScreen = 'loginScreen';
  static const String homescreen = 'homescreen';
  static const String chathomepage = 'chathomepage';
  static const String chatdepartment = 'chatdepartment';
  static const String contact = 'contact';
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case signupscreen:
        return MaterialPageRoute(
          builder: (context) => const SignupScreen(),
        );

      /*case userInfo:
        final String? profileImageUrl = settings.arguments as String?;
        return MaterialPageRoute(
          builder: (context) => UserInfoPage(
            profileImageUrl: profileImageUrl,
          ),
        );*/
      case homescreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case contact:
        return MaterialPageRoute(
          builder: (context) => const ContactPage(),
        );

      case chat:
        final UserModel user = settings.arguments as UserModel;
        return MaterialPageRoute(
          builder: (context) => ChatPage(user: user),
        );
      /*
      case profile:
        final UserModel user = settings.arguments as UserModel;
        return PageTransition(
          child: ProfilePage(user: user),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 800),
        );*/

      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Center(
                child: Text('No Page Route Provided'),
              ),
            );
          },
        );
    }
  }
}
