import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutterpersonal/provider/api_provider.dart";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Consumer(
            builder: (context, ref, child) {
              final state= ref.watch(apiProvider);
              return state.when(
                  data: (data){
                    return Center(child: Text(data['categories'][0]['strCategoryDescription']));
                  },
                  error: (err, stack) => Text('$err'),
                  loading: () => Center(child: CircularProgressIndicator())
              );
            }
       ),
        )
    );
  }
}
