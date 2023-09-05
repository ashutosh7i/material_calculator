import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorLogic());
}

//state defined here
class CalculatorLogic extends StatefulWidget {
  const CalculatorLogic({super.key});

  @override
  State<CalculatorLogic> createState() => _CalculatorLogicState();
}

//design here
class _CalculatorLogicState extends State<CalculatorLogic> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  String? result;
//logic here

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("basic Calculator")),
          body: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Center(
              child: Column(
                children: [
                  //input1
                  TextField(
                    keyboardType:
                        TextInputType.number, //request number via keyboard
                    controller: no1Controller,
                  ),
                  //input2
                  TextField(
                    keyboardType:
                        TextInputType.number, //request number via keyboard
                    controller: no2Controller,
                  ),
                  //operators
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            //parsing string as text
                            var no1 = int.parse(no1Controller.text.toString());
                            //parsing string as text
                            var no2 = int.parse(no2Controller.text.toString());

                            //result
                            var sum = no1 + no2;

                            //setting the state
                            setState(() {
                              result = "$sum";
                            });
                          },
                          child: Text('+')),
                      Spacer(),
                      ElevatedButton(
                          onPressed: () {
                            //minified version
                            setState(() {
                              var sum =
                                  int.parse(no1Controller.text.toString()) -
                                      int.parse(no2Controller.text.toString());
                              result = "$sum";
                            });
                          },
                          child: Text('-')),
                      Spacer(),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              var sum =
                                  int.parse(no1Controller.text.toString()) *
                                      int.parse(no2Controller.text.toString());
                              result = "$sum";
                            });
                          },
                          child: Text('*')),
                      Spacer(),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              var no1 =
                                  int.parse(no1Controller.text.toString());
                              var no2 =
                                  int.parse(no2Controller.text.toString());
                              var sum = no1 / no2;
                              result = "$sum";
                            });
                          },
                          child: Text('/'))
                    ],
                  ),
                  //result
                  Text(
                    "Result: $result",
                    style: TextStyle(fontSize: 40),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
