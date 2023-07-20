import 'package:flutter/material.dart';
import 'package:counter_app/counter/counter.dart';

class CounterApp extends MaterialApp {
  /// {@macro counter_app}
  // In this case there are no widgets to compose so it's simpler to just extend MaterialApp.
  const CounterApp({super.key}) : super(home: const CounterPage());
}
