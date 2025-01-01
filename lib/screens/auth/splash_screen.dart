import 'package:flutter/material.dart';
import 'package:movieflex/screens/navigation_screen/movie_screen.dart';
import 'package:movieflex/services/init_getit.dart';
import 'package:movieflex/services/navigation_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _moveToNextScreen() async {
    Future.delayed(Duration(seconds: 2), () {
      getIt<NavigationService>().navigatorReplacement(MovieScreen());
    });
  }

  @override
  void initState() {
    _moveToNextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Text(
              'MovieFlex',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            Spacer(),
            Text('version: 1.0.0', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
