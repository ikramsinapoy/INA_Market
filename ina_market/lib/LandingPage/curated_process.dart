import 'package:flutter/material.dart';
import 'package:ina_market/LandingPage/sourcing_suppliers.dart';

class CuratedProcess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                padding: const EdgeInsets.all(30),
                child: const Image(
                  image: AssetImage('assets/Completed steps.png'),
                  fit: BoxFit.contain,
                  width: 300,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25)),
                    color: Colors.white),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(bottom: 15, top: 20),
                      child: const Text(
                        "Curated Process",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 60),
                      child: const Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16)),
                    ),
                    Container(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Icons.circle,
                            color: Colors.grey[400],
                            size: 12.0,
                          ),
                          const Icon(
                            Icons.circle,
                            color: Color(0xffC30010),
                            size: 12.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.grey[400],
                            size: 12.0,
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.grey[400],
                            size: 12.0,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 162,
                      // padding: const EdgeInsets.all(20),
                      child: ElevatedButton(
                        // color: const Color(0xffC30010),
                        child: const Text(
                          "Next",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return SourcingSuppliers();
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
            ],
          ),
        )),
      ),
    );
  }
}
