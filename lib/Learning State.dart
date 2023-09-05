import 'package:flutter/material.dart';

void main() {
  runApp(Counter());
}

//Define the state here
class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState(); //state here
}

//design and use state here
class _CounterState extends State<Counter> {
//logic here
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('counter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$count',
                style: TextStyle(fontSize: 80),
              ),
              ElevatedButton(
                  onPressed: () {
                    //on press of the button,
                    //count variable value will increase
                    // count++;
                    // print(count);

                    //setState updates the UI
                    setState(() {
                      count++; //increment
                      print(count);
                    });
                  },
                  child: Text(
                    "+",
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
