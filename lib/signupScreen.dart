import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF15161E),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 110),
            Text(
              '효율적인 자산관리\n가계부앱에서',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  letterSpacing: -0.3),
            ),
            SizedBox(height: 50),
            Text(
              '내 자산 정보가 모이는 가계부앱에서\n효율적인 자산관리를 시작해보세요.',
              style: TextStyle(
                  color: Color(0xFF8894AF), fontSize: 16, letterSpacing: -0.3),
            ),
          ],
        ),
      ),
    );
  }
}
