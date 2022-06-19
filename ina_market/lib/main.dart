import 'package:flutter/material.dart';
import 'package:ina_market/LandingPage/catalog_product.dart';
// import 'package:ina_market/ForgotPass/forgot_pass.dart';
// import 'package:ina_market/LandingPage/catalog_product.dart';
import 'package:ina_market/LandingPage/curated_process.dart';
import 'package:ina_market/Login/login_page.dart';
// import 'package:ina_market/LandingPage/curated_process.dart';
// import 'package:ina_market/LandingPage/marketplace_msme.dart';
// import 'package:ina_market/LandingPage/sourcing_suppliers.dart';
// import 'package:ina_market/Login/login_page.dart';
// import 'package:ina_market/Login/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CatalogProduct(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: '/',
//       routes: {
//         '/': (context) => CatalogProduct(),
//         // '/currated': (context) => CuratedProcess(),
//         // '/sourcing': (context) => SourcingSuppliers(),
//         // '/marketplace': (context) => MarketplaceMSME(),
//         '/login': (context) => Login(),
//         '/regis': (context) => Register(),
//         '/forgot-pass': (context) => ForgotPass(),
//       },
//       // '/currated': (context) => CuratedProcess(),
//       // '/sourcing': (context) => SourcingSuppliers(),
//       // '/marketplace': (context) => MarketplaceMSME(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     title: 'Navigation Basics',
//     home: FirstRoute(),
//   ));
// }

// class FirstRoute extends StatelessWidget {
//   const FirstRoute({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text('Open route'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const SecondRoute()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class SecondRoute extends StatelessWidget {
//   const SecondRoute({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }

// // class  extends StatelessWidget {
// //   const ({ Key? key }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
      
// //     );
// //   }
// // }