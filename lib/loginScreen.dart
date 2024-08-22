import 'package:flutter/material.dart';
import 'verificationScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF15161E),
      appBar: AppBar(
        backgroundColor: Color(0xFF15161E),
        title: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 22,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Row(
                    //   children: [
                    //     Image.asset(
                    //       'assets/arrow-left.png',
                    //     ),
                    //     Expanded(
                    //       child: Align(
                    //         alignment: Alignment.center,
                    //         child: Text(
                    //           'Login',
                    //           style: TextStyle(
                    //             color: Colors.white,
                    //             fontSize: 16,
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    SizedBox(height: 80),
                    Center(
                      child: Image.asset(
                        'assets/loginScreen_img.png',
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '효율적인 자산관리\n가계부앱에서',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -0.3,
                      ),
                    ),
                    SizedBox(height: 50),
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
                    SizedBox(height: 16),
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
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          '아이디 찾기',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF8894AF),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 1,
                          height: 14,
                          color: Color(0xFF8894AF),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '비밀번호 찾기',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF8894AF),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VerificationScreen(), //페이지 이동
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
                '로그인',
                style: TextStyle(color: Colors.white, fontSize: 18),
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
