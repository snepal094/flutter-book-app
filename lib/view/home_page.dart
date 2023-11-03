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

                  final d = ref.watch(countState);
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('$d', style: TextStyle(fontSize: 50),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed: () {
                            ref.read(countState.notifier).state = 90;
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