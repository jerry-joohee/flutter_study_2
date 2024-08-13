import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/arrow-left.png',
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Join',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 94),
                    Text(
                      '효율적인 자산관리\n가계부앱에서',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -0.3,
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      '이메일',
                      style: TextStyle(
                          color: Color(0xFF8894AF),
                          fontSize: 16,
                          letterSpacing: -0.3),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                        hintText: 'email@gmail.com',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF8894AF),
                        ),
                        filled: true, //
                        fillColor: Color(0xFF161C2A),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        counterText: '',
                        counterStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      cursorColor: Colors.white,
                      minLines: 1,
                      maxLength: 50,
                    ),
                    SizedBox(height: 20),
                    Text(
                      '비밀번호',
                      style: TextStyle(
                          color: Color(0xFF8894AF),
                          fontSize: 16,
                          letterSpacing: -0.3),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      obscureText: !visible, //입력 필드의 텍스트를 숨길지 여부를 결정하는 속성
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                        hintText: '********',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF8894AF),
                        ),
                        filled: true,
                        fillColor: Color(0xFF161C2A),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        counterText: '',
                        counterStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              visible = !visible;
                            });
                          },
                          icon: Image.asset(
                            visible ? 'assets/eye-slash.png' : 'assets/eye.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      cursorColor: Colors.white,
                      minLines: 1,
                      maxLength: 10,
                    ),
                    SizedBox(height: 20),
                    Text(
                      '비밀번호 확인',
                      style: TextStyle(
                          color: Color(0xFF8894AF),
                          fontSize: 16,
                          letterSpacing: -0.3),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                      obscureText: !visible, //입력 필드의 텍스트를 숨길지 여부를 결정하는 속성
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                        hintText: '********',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF8894AF),
                        ),
                        filled: true,
                        fillColor: Color(0xFF161C2A),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        counterText: '',
                        counterStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              visible = !visible;
                            });
                          },
                          icon: Image.asset(
                            visible ? 'assets/eye-slash.png' : 'assets/eye.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      cursorColor: Colors.white,
                      minLines: 1,
                      maxLength: 10,
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
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
