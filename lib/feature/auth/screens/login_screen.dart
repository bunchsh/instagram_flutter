import 'package:flutter/material.dart';
import 'package:instagram_clone/core/common/sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0, color: Colors.grey),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/Instagram_logo.png',
                        width: 150.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Form(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(3.0),
                              ),
                              child: TextFormField(
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(0, 8.0, 0, 8.0),
                                  hintText: '이메일',
                                  hintStyle: TextStyle(fontSize: 12.0),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(3.0),
                              ),
                              child: TextFormField(
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(0, 8.0, 0, 8.0),
                                  hintText: '비밀번호',
                                  hintStyle: TextStyle(fontSize: 12.0),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 30.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              // borderRadius
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            '로그인',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 97.0,
                            child: Divider(
                              thickness: 1,
                              height: 1,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Text('또는'),
                          ),
                          SizedBox(
                            width: 97.0,
                            child: Divider(
                              thickness: 1,
                              height: 1,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      SignInButton(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0, color: Colors.grey),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('계정이 없으신가요?'),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          '가입하기',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
