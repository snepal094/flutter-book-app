import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final countState= StateProvider((ref) => 0);

final someData= Provider((ref) => 'Hello World');

final countProvider= ChangeNotifierProvider((ref) => CountsNotifier(ref.watch(someData)));



class CountsNotifier extends ChangeNotifier{

  final String nameSome;
  CountsNotifier(this.nameSome);

  int number=0;

  void increment(){
    number++;
    notifyListeners();
  }

  void decrement(){
    number--;
    notifyListeners();
  }
}