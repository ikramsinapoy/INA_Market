import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  // List images = [
  //   'Group1.png',
  //   'Group2.png',
  //   'Group3.png',
  // ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(right: 15, left: 15, top: 10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Selamat Berbelanja!',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff404040)),
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(
                          Icons.notifications_none,
                          color: Color(0xffC30010),
                          size: 30.0,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.search,
                          color: Color(0xffC30010),
                          size: 30.0,
                        )
                      ],
                    ),
                  ],
                ),
                // ListView.builder(
                //     itemCount: 3,
                //     scrollDirection: Axis.horizontal,
                //     itemBuilder: (_, index) {
                //       return Container(
                //         margin: const EdgeInsets.only(right: 10, top: 10),
                //         decoration: BoxDecoration(
                //             image: DecorationImage(
                //                 image: AssetImage('assets/' + images[index]),
                //                 fit: BoxFit.cover)),
                //       );
                //     }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
