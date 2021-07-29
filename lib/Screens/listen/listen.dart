// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class ListenSreen extends StatefulWidget {
//   @override
//   _ListenScreenState createState() => _ListenScreenState();
// }

// class _ListenScreenState extends State<ListenScreen> {
//   @override
//   Widget build(BuildContext context) {
//     String _url = 'http://192.168.1.185:8501';
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Tadbur App'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () async {
//             await canLaunch(_url)
//                 ? await launch(_url,
//                     forceSafariVC: false,
//                     forceWebView: true,
//                     headers: <String, String>{'header_key': 'header_value'})
//                 : throw 'Could not launch $_url';
//           },
//           child: Text('التعرف علي القارئ'),
//         ),
//       ),
//     );
//   }
// }
