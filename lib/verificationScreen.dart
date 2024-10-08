import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_study_2/provider/provider.dart';

class VerificationScreen extends ConsumerStatefulWidget {
  const VerificationScreen({super.key});

  @override
  VerificationScreenState createState() => VerificationScreenState();
}

class VerificationScreenState extends ConsumerState<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    final verificationScreen = ref.watch(providerProvider);
    final verificationScreenNotifier = ref.read(providerProvider.notifier);
    return Scaffold(
      backgroundColor: Color(0xFF15161E),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 80),
                    Center(
                      child: Image.asset(
                        'assets/verificationScreen_img.png',
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '보다 간편하고 새로운\n가계부의 시작',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -0.3,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '내 자산 정보가 모이는 가계부앱에서\n효율적인 자산관리를 시작해보세요.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF8894AF),
                          fontSize: 16,
                          letterSpacing: -0.3),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFF1071CB),
              ),
              child: Center(
                child: Text(
                  '완료',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
