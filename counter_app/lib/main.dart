import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:counter_app/app.dart';
import 'package:counter_app/counter_observer.dart';

void main() {
  // Initializing Counter Observer 
  // Callin runApp with CounterApp widget
  Bloc.observer = const CounterObserver();
  runApp(const CounterApp());
}
