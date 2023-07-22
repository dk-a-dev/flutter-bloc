# timer_app
A simple Timer app made using bloc

### Application UI Elements
- > **Ticker** is a class that emits a stream of integers at a specified interval.
- > **TimerApp** is a MaterialApp class that hosts the UI for the app.
- > **TimerPage** is a stateless widget which returns the BlocProvider widget.
- > **TimerView** is a stateless widget which is child of BlocProvider widget and returns the UI for the app.
- > **Background** is a stateless widget which is UI for the background of the app and is child of TimerView widget.
- > **TimerText** is a stateless widget which is UI for the timer text and is child of TimerView widget.
- > **ActionButtons** is a stateless widget which is UI for the buttons and is child of TimerView widget it also changes the UI of buttons based on the state of the timer.

### Application Bloc Elements
