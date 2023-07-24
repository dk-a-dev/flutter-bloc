import 'package:flutter/material.dart';
import 'package:timer_app/timer/view/timer-view-widgets/action_buttons.dart';
import 'package:timer_app/timer/view/timer-view-widgets/background.dart';
import 'package:timer_app/timer/view/timer-view-widgets/timer_text.dart';


class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Timer')),
      body: const Stack(
        children: [
          Background(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100.0),
                child: Center(child: TimerText()),
              ),
              ActionButtons(),
            ],
          )
        ],
      ),
    );
  }
}
