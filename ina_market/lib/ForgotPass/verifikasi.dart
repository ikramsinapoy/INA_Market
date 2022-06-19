import 'package:flutter/material.dart';
import 'package:ina_market/ForgotPass/new_pass.dart';

class Verifikasi extends StatefulWidget {
  const Verifikasi({Key? key}) : super(key: key);

  @override
  State<Verifikasi> createState() => _VerifikasiState();
}

class _VerifikasiState extends State<Verifikasi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text(
            "Verifikasi",
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
        body: Container(
          margin:
              const EdgeInsets.only(left: 15, top: 35, right: 15, bottom: 30),
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: const Text(
                  "A 4 - Digit PIN has been sent to ypur email, enter it below to continue",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff333333),
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(bottom: 15),
                child: ElevatedButton(
                  // color: const Color(0xffC30010),
                  child: const Text(
                    "Lanjutkan",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const NewPass();
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
                    "Tidak mendapatkan email ? ",
                    style: TextStyle(color: Color(0xff757575), fontSize: 14),
                  ),
                  Container(
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        child: const Text(
                          "Daftar disini",
                          style:
                              TextStyle(color: Color(0xffC30010), fontSize: 14),
                        ),
                        // onTap: () {
                        //   Navigator.push(context,
                        //       MaterialPageRoute(builder: (context) {
                        //     return const Register();
                        //   }));
                        // },
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
