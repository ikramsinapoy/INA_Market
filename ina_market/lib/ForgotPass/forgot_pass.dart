import 'package:flutter/material.dart';
import 'package:ina_market/ForgotPass/verifikasi.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  TextEditingController controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text(
            "Lupa Kata Sandi",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: const Text(
                  "Enter the email associated with your account and we will send an email instruction to reset your password",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff333333),
                  ),
                  textAlign: TextAlign.justify,
                ),
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
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(bottom: 5),
                child: ElevatedButton(
                  // color: const Color(0xffC30010),
                  child: const Text(
                    "Lanjutkan",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Verifikasi();
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
            ],
          ),
        ),
      ),
    );
  }
}
