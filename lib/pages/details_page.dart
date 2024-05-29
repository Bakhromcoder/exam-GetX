// import 'package:flutter/material.dart';
// import 'package:project_exam/controller/home_controller.dart';
//
// import '../models/info_model.dart';
//
//
// Widget itemOfNews(Article article,HomeController controller,BuildContext context){
//   return  GestureDetector(
//     onTap: (){
//       controller.urllaunch(article.url);
//     },
//     onLongPress: (){
//       controller.gotoWebViewPage(article.url,context);
//     },
//     child: Container(
//       child: Column(
//         children: [
//           Container(
//             padding: EdgeInsets.all(10),
//             decoration: BoxDecoration(
//                 border: Border.all(color: Colors.amberAccent)),
//             child: Column(
//               children: [
//                 Container(
//                   child: Container(
//                     height: 150,
//
//                     decoration: BoxDecoration(
//
//                       image: DecorationImage(
//                         image: NetworkImage(article.urlToImage!),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Divider(),
//                 Container(
//                   padding: EdgeInsets.all(5),
//                   decoration: BoxDecoration(),
//                   child: Column(
//                     children: [
//                       Text(article.source.name, style: TextStyle(fontSize: 20)),
//                       SizedBox(height: 10),
//                       Text(article.title),
//                       SizedBox(height: 10),
//                       Text(article.description!),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }