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
- > **TimerBloc** is a class that extends Bloc class and is responsible for managing the state of the timer.It used StreamSubscription to listen to the stream of integers and yield the state of the timer based on the value of the integer.It defines all the states of the timer those are *_onStarted*, *_onPaused*, *_onResumed*, *_onReset*, *_onTicked*.It also uses the ticker class to emit the stream of integers at a specified interval.
- > **TimerEvent** is a sealed class that defines all the events of the timer and is processed by the bloc to change the state of the timer.
>- TimerStarted is a class that extends TimerEvent class and is responsible for starting the timer.
>- TimerPaused is a class that extends TimerEvent class and is responsible for pausing the timer.
>- TimerResumed is a class that extends TimerEvent class and is responsible for resuming the timer.
>- TimerReset is a class that extends TimerEvent class and is responsible for resetting the timer yo original state.
>- _TimerTicked is a class that extends TimerEvent class and is responsible for updating the timer accordingly.
- > **TimerState** is a sealed class that extends Equatable class(helps in optimization and avoid same state unecessary rebuilds of the app) and defines all the states of the timer and holds all the bloc states.
>- TimerInitial is a class that extends TimerState class and is responsible for initial state of the timer and used to start the timer.
>- TimerRunInProgress is a class that extends TimerState class and is responsible for running state of the timer and used to pause and reset the timer as well as see the remaining duration.
>- TimerRunPause is a class that extends TimerState class and is responsible for paused state of the timer and used to resume and reset the timer.
>- TimerRunComplete is a class that extends TimerState class and is responsible for completed state of the timer and used to reset the timer.