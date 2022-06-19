import 'package:flutter/material.dart';
import 'package:ina_market/Login/login_page.dart';

class NewPass extends StatefulWidget {
  const NewPass({Key? key}) : super(key: key);

  @override
  State<NewPass> createState() => _NewPassState();
}

class _NewPassState extends State<NewPass> {
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
        body: SingleChildScrollView(
          child: Container(
            margin:
                const EdgeInsets.only(left: 15, top: 35, right: 15, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: const Text(
                    'Your new Password must be different from previous used passwords',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff333333),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.only(bottom: 20),
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
                  height: 50,
                  margin: const EdgeInsets.only(bottom: 5),
                  child: TextField(
                    obscureText: isObscure,
                    decoration: InputDecoration(
                        hintText: "Konfirmasi passwordmu disini",
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
                    margin: const EdgeInsets.only(bottom: 15),
                    child: const Text("*Kedua kata sandi harus sama")),

                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(bottom: 5),
                  child: ElevatedButton(
                    child: const Text(
                      "Reset Kata Sandi",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffC30010),
                      padding: const EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
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
                                      "Berhasil Merubah",
                                      style: TextStyle(
                                          color: Color(0xff404040),
                                          fontSize: 18),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(30),
                                      child: const Image(
                                        image: AssetImage('assets/key.png'),
                                        fit: BoxFit.contain,
                                        height: 265,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 20),
                                      child: const Text(
                                        "Kata Sandi anda telah berhasil dirubah",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: const EdgeInsets.only(bottom: 5),
                                      child: ElevatedButton(
                                        child: const Text(
                                          "Silahkan Login",
                                          style: TextStyle(color: Colors.white),
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
                  ),
                ),

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
    );
  }
}
