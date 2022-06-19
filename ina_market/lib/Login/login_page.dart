// import 'dart:html';

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:ina_market/Home/home.dart';
import 'package:ina_market/ForgotPass/forgot_pass.dart';
import 'package:ina_market/Login/register.dart';

// import 'package:ina_market/LandingPage/curated_process.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPass = TextEditingController();
  bool isObscure = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: const Color(0xffFAF2F3),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/ina market.png',
                    fit: BoxFit.contain,
                    width: 156,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: const Image(
                      image: AssetImage('assets/Mobile login.png'),
                      fit: BoxFit.contain,
                      width: 300,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(25)),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: const Text(
                            "Selamat Datang!",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Color(0xff404040)),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: const Text(
                              "Silahkan masuk untuk dapat menggunakan InaMarket",
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff757575))),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Masukkan emailmu disini",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6))),
                            onChanged: (value) {
                              setState(() {});
                            },
                            controller: controllerEmail,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: TextField(
                            obscureText: isObscure,
                            decoration: InputDecoration(
                                hintText: "Masukkan passwordmu disini",
                                suffixIcon: IconButton(
                                  icon: Icon(isObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                  onPressed: () {
                                    setState(() {
                                      isObscure = !isObscure;
                                    });
                                  },
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6))),
                            onChanged: (value) {
                              setState(() {});
                            },
                            controller: controllerPass,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    }),
                                const Text(
                                  "Tetap Login",
                                  style: TextStyle(
                                      color: Color(0xff757575), fontSize: 14),
                                )
                              ],
                            ),
                            Container(
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  child: const Text(
                                    "Lupa Password ?",
                                    style: TextStyle(
                                        color: Color(0xffC30010), fontSize: 14),
                                  ),
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const ForgotPass();
                                    }));
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(bottom: 5),
                          child: ElevatedButton(
                            child: const Text(
                              "Masuk",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return HomePage();
                              }));
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xffC30010),
                              padding: const EdgeInsets.all(15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              "Belum mempunyai akun ? ",
                              style: TextStyle(
                                  color: Color(0xff757575), fontSize: 14),
                            ),
                            Container(
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  child: const Text(
                                    "Daftar disini",
                                    style: TextStyle(
                                        color: Color(0xffC30010), fontSize: 14),
                                  ),
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const Register();
                                    }));
                                  },
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
