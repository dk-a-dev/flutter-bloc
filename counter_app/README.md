# counter_app
A simple counter app that uses bloc library in flutter as State Managemnet tool.
*The application uses a feature-driven directory structure.*

- > **BlocObserver** is used to observe the state changes in the application, here [CounterObserver](lib\counter_observer.dart) does the job.

- > **CounterApp** is a MaterialApp and specifies or set home as [CounterPage](lib\counter\view\counter_page.dart).

- > **CounterPage** is a StatelessWidget and is responsible for providing a CounterCubit instance to the CounterView.

- > ***BlocProvider*** is used to provide the bloc to the widget tree.

- > **CounterCubit** manages an integer as its state and provides methods to increment and decrement the state.

- > **CounterView** is a StatelessWidget and is responsible for rendering the current count and rendering two FloatingActionButtons to increment/decrement the counter.

- > ***BlocBuilder*** is used to wrap the Text widget in order to update the text any time the CounterCubit state changes. In addition, context.read\<CounterCubit>() is used to look-up the closest CounterCubit instance.

- > In view.dart and counter/counter.dart export the view and cubit files respectively.