import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'signupScreen.dart';
import 'loginScreen.dart';
import 'package:flutter_study_2/provider/provider.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final onbordingScreen = ref.watch(providerProvider);
    final onbordingScreenNotifier = ref.read(providerProvider.notifier);
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
            Spacer(), //Spacer 위젯을 추가하여 남은 공간을 차지하도록 합니다.
            ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupScreen(), //페이지 이동
                      ),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(52),
                backgroundColor: Color(0xFF1071CB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                '회원가입',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(), //페이지 이동
                      ),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(52),
                backgroundColor: Color(0xFFBEBEBE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                '로그인',
                style: TextStyle(color: Color(0xFF707070), fontSize: 18),
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
