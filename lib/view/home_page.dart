import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterpersonal/provider/count_provider.dart';




class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print('builds');

    return Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Consumer(
                builder: (context, ref, child) {

                  final d = ref.watch(countProvider);
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(d.nameSome),
                      Text('${d.number}', style: TextStyle(fontSize: 50),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed: () {
                            ref.read(countProvider).increment();
                          }, child: Text('Increment')),

                          TextButton(onPressed: () {
                            ref.read(countProvider).decrement();
                          }, child: Text('Decrement')),
                        ],
                      )
                    ],
                  );
                }
            ),
          ),
        )
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutterpersonal/provider/count_provider.dart';
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     print('builds');
//     return Scaffold(
//       body: SafeArea(
//         child: Consumer(
//           builder: (context, ref, child) {
//             final number = ref.watch(countProvider).number;
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Consumer(
//                   builder: (context, ref, child) {
//                     final data = ref.watch(someData);
//                     return Text(data);
//                   },
//                 ),
//                 Text('$number', style: TextStyle(fontSize: 50)),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     TextButton(
//                       onPressed: () {
//                         ref.read(countProvider).increment();
//                       },
//                       child: Text('Increment'),
//                     ),
//                     TextButton(
//                       onPressed: () {
//                         ref.read(countProvider).decrement();
//                       },
//                       child: Text('Decrement'),
//                     ),
//                   ],
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
