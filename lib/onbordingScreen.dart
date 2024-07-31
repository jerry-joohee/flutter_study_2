import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF15161E),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Placeholder for any content if needed
            SizedBox(height: 110),
            Text(
              '보다 간편하고 새로운\n가계부의 시작',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  letterSpacing: -0.3),
            ),
            SizedBox(height: 16),
            Text(
              '내 자산 정보가 모이는 가계부앱에서\n효율적인 자산관리를 시작해보세요.',
              style: TextStyle(
                  color: Color(0xFF8894AF), fontSize: 16, letterSpacing: -0.3),
            ),
            SizedBox(height: 30),
            Image.asset(
              'assets/onbordingScreen_img.png',
            ),
            Spacer(), // Spacer 위젯을 추가하여 남은 공간을 차지하도록 합니다.
            Container(
              width: double.infinity,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFF1071CB),
              ),
              child: Center(
                child: Text(
                  '회원가입',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFFBEBEBE),
              ),
              child: Center(
                child: Text(
                  '로그인',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF707070),
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
