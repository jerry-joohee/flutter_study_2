import 'package:flutter/material.dart';
import 'loginScreen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {
  bool passwordVisible = false;
  bool checkVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF15161E),
      appBar: AppBar(
        backgroundColor: Color(0xFF15161E),
        title: Text(
          'Join',
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      obscureText: !passwordVisible,
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
                              passwordVisible = !passwordVisible;
                            });
                          },
                          icon: Image.asset(
                            passwordVisible
                                ? 'assets/eye-slash.png'
                                : 'assets/eye.png',
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
                    SizedBox(height: 8),
                    TextField(
                      obscureText: !checkVisible,
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
                              checkVisible = !checkVisible;
                            });
                          },
                          icon: Image.asset(
                            checkVisible
                                ? 'assets/eye-slash.png'
                                : 'assets/eye.png',
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
            ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
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
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
