import 'package:flutter/material.dart';

// class AnswersWidget extends StatelessWidget {
//   const AnswersWidget({super.key, required this.summaryData});

//   final List<String> summaryData;

//   @override
// //   Widget build(BuildContext context) {
// //     return SizedBox(
// //       height: 300,
// //       child: SingleChildScrollView(
//         child: Column(
//           children: summaryData.map((e) {
//             return Row(
//               children: [
//                 Text(((e['question_index'] as int) + 1).toString()),
//                 Expanded(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text(e['question'] as String),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Text(e['selected_answer'] as String),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         e['correct_answer'] as String,
//                         style: const TextStyle(color: Colors.blue),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }