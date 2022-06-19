// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:ina_market/Home/home.dart';
import 'package:ina_market/Login/login_page.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerNama = TextEditingController();
  TextEditingController controllerTelp = TextEditingController();
  TextEditingController controllerPass = TextEditingController();
  TextEditingController controllerValidPass = TextEditingController();
  bool isObscure = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text(
            "Daftar Akun",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xff404040)),
          ),
          leading: IconButton(
            color: const Color(0xffC30010),
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(
                  left: 15, top: 35, right: 15, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Masukkan namamu disini",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6))),
                      onChanged: (value) {
                        setState(() {});
                      },
                      controller: controllerNama,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: const Text("*Masukkan nama sesuai dengan KTP")),
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
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Masukkan teleponmu disini",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6))),
                      onChanged: (value) {
                        setState(() {});
                      },
                      controller: controllerTelp,
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(bottom: 5),
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
                  Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: const Text(
                          "*Kata sandi harus terdiri dari 10 karakter")),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(bottom: 5),
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
                      controller: controllerValidPass,
                    ),
                  ),
                  Container(
                      // margin: const EdgeInsets.only(bottom: ),
                      child: const Text("*Kedua kata sandi harus sama")),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            "Dengan mendaftar, Anda menyetujui",
                            style: TextStyle(
                                color: Color(0xff757575), fontSize: 14),
                          ),
                          // Container(
                          //   child: MouseRegion(
                          //     cursor: SystemMouseCursors.click,
                          //     child: GestureDetector(
                          //       child: const Text(
                          //         "syarat dan ketentuan",
                          //         style: TextStyle(
                          //             color: Color(0xffC30010), fontSize: 14),
                          //       ),
                          //       onTap: () {
                          //         // Navigator.push(context,
                          //         //     MaterialPageRoute(builder: (context) {
                          //         //   return const Register();
                          //         // }));
                          //       },
                          //     ),
                          //   ),
                          // ),
                          const Text(
                            "kami.",
                            style: TextStyle(
                                color: Color(0xff757575), fontSize: 14),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(bottom: 5),
                    child: ElevatedButton(
                      child: const Text(
                        "Daftar",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20))),
                            builder: (context) => Container(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const Text(
                                        "Mendaftar Sukses",
                                        style: TextStyle(
                                            color: Color(0xff404040),
                                            fontSize: 18),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(30),
                                        child: const Image(
                                          image: AssetImage('assets/ok.png'),
                                          fit: BoxFit.contain,
                                          height: 265,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(bottom: 20),
                                        child: const Text(
                                          "Pendaftaran berhasil, silahkan masuk untuk menggunakan InaMarket",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        margin:
                                            const EdgeInsets.only(bottom: 5),
                                        child: ElevatedButton(
                                          child: const Text(
                                            "Silahkan Login",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return const Login();
                                            }));
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(0xffC30010),
                                            padding: const EdgeInsets.all(15),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      // ElevatedButton(
                                      //     onPressed: () => Navigator.pop(context),
                                      //     child: const Text('close')),
                                    ],
                                  ),
                                ));
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
                        "Sudah memiliki akun ? ",
                        style:
                            TextStyle(color: Color(0xff757575), fontSize: 14),
                      ),
                      Container(
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            child: const Text(
                              "Masuk",
                              style: TextStyle(
                                  color: Color(0xffC30010), fontSize: 14),
                            ),
                            onTap: () {
                              Navigator.pop(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Login();
                              }));
                            },
                          ),
                        ),
                      ),
                    ],
                  )
                  // Container(
                  //   child: RaisedButton(
                  //     child: const Text("Back"),
                  //     onPressed: () {
                  //       Navigator.pop(context);
                  //     },
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
