import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyCalc());
}

//stateful widget
class MyCalc extends StatefulWidget {
  const MyCalc({super.key});

  @override
  State<MyCalc> createState() => _MyCalcState();
}

class _MyCalcState extends State<MyCalc> {
  //calculator logic

  //shows a string about all operations
  String allCalculations = "";

  //shows current input
  double inputField = 0;

  //last input symbol check
  bool isLastInputSymbol = false;

//controller to update result realtime
  TextEditingController inputController = TextEditingController();

  // Function to concatenate operations and update the string allCalculations
  void addOperations(String newdata) {
    if (newdata == "+" || newdata == "-" || newdata == "*" || newdata == "/") {
      // Check if the last input was a symbol
      if (isLastInputSymbol) {
        // Remove the last character (symbol) from allCalculations
        allCalculations =
            allCalculations.substring(0, allCalculations.length - 1);
      }
      isLastInputSymbol = true;
    } else {
      isLastInputSymbol = false;
    }
    allCalculations += newdata;
  }

// Function to remove the last added operation
  void removeLastOperation() {
    if (allCalculations.isNotEmpty) {
      allCalculations =
          allCalculations.substring(0, allCalculations.length - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

          //appbar
          appBar: AppBar(
            title: Text(
              "Calculator",
            ),
            centerTitle: true,
          ),
          //everything will be a row element
          body: Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 20, 5, 20),
              child: Column(
                children: [
                  //data section
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Container(
                      //result panel

                      child: Column(
                        children: [
                          Spacer(),
                          //all calculations
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              child: Text(
                                "$allCalculations",
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          Spacer(),
                          //input field
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              child: Text(
                                "$inputField",
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Spacer()
                        ],
                      ),
                    ),
                  ),
                  //symbol section
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        //row1
                        Row(
                          children: [
                            //button1 clear all
                            InkWell(
                              onTap: () {
                                setState(() {
                                  allCalculations = "";
                                  inputField = 0;
                                  print('ac');
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(160, 160, 160, 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                padding: EdgeInsets.fromLTRB(20, 22, 20, 22),
                                child: Text(
                                  'AC',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            Spacer(),
                            //button2 backspace
                            InkWell(
                              onTap: () {
                                setState(() {
                                  removeLastOperation();
                                  inputField = 0;
                                  print('backspace');
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(160, 160, 160, 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                child: Icon(
                                  Icons.backspace,
                                  size: 38,
                                ),
                              ),
                            ),
                            Spacer(),
                            //button3 percentage sign
                            Container(
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(160, 160, 160, 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                child: Icon(
                                  Icons.percent,
                                  size: 38,
                                )),
                            Spacer(),
                            //button4 divide button
                            InkWell(
                              onTap: () {
                                setState(() {
                                  addOperations('/');
                                  inputField = 0;
                                  print('/');
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.amber.shade700,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                child: Icon(
                                  CupertinoIcons.divide,
                                  size: 38,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        //row2
                        Row(
                          children: [
                            //button1 7 number
                            InkWell(
                              onTap: () {
                                setState(() {
                                  addOperations("7");
                                  inputField = 7;
                                  print('7');
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                padding: EdgeInsets.fromLTRB(30, 22, 30, 22),
                                child: Text(
                                  '7',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            Spacer(),
                            //button2 8 number
                            InkWell(
                              onTap: () {
                                setState(() {
                                  addOperations("8");
                                  inputField = 8;
                                  print('8');
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                padding: EdgeInsets.fromLTRB(30, 22, 30, 22),
                                child: Text(
                                  '8',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            Spacer(),
                            //button3 9 number
                            InkWell(
                              onTap: () {
                                setState(() {
                                  addOperations("9");
                                  inputField = 9;
                                  print('9');
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                padding: EdgeInsets.fromLTRB(30, 22, 30, 22),
                                child: Text(
                                  '9',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            Spacer(),
                            //button4 multiply sign
                            InkWell(
                              onTap: () {
                                setState(() {
                                  addOperations("*");
                                  inputField = 9;
                                  print('*');
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.amber.shade700,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                child: Icon(
                                  CupertinoIcons.multiply,
                                  size: 38,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        //row3
                        Row(
                          children: [
                            //button1 4 number
                            InkWell(
                              onTap: () {
                                setState(() {
                                  addOperations("4");
                                  inputField = 4;
                                  print('4');
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                padding: EdgeInsets.fromLTRB(30, 22, 30, 22),
                                child: Text(
                                  '4',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            Spacer(),
                            //button2 5 number
                            InkWell(
                              onTap: () {
                                setState(() {
                                  addOperations("5");
                                  inputField = 5;
                                  print('5');
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                padding: EdgeInsets.fromLTRB(30, 22, 30, 22),
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            Spacer(),
                            //button3 6 number
                            InkWell(
                              onTap: () {
                                setState(() {
                                  addOperations("6");
                                  inputField = 6;
                                  print('6');
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                padding: EdgeInsets.fromLTRB(30, 22, 30, 22),
                                child: Text(
                                  '6',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            Spacer(),
                            //button4 minus sign
                            InkWell(
                              onTap: () {
                                setState(() {
                                  addOperations("-");
                                  inputField = 9;
                                  print('9');
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.amber.shade700,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                child: Icon(
                                  CupertinoIcons.minus,
                                  size: 38,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        //row4
                        Row(
                          children: [
                            //button1 1 number
                            InkWell(
                              onTap: () {
                                setState(() {
                                  addOperations("1");
                                  inputField = 1;
                                  print('1');
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                padding: EdgeInsets.fromLTRB(30, 22, 30, 22),
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            Spacer(),
                            //button2 2 number
                            InkWell(
                              onTap: () {
                                setState(() {
                                  addOperations("2");
                                  inputField = 2;
                                  print('2');
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                padding: EdgeInsets.fromLTRB(30, 22, 30, 22),
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            Spacer(),
                            //button3 3 number
                            InkWell(
                              onTap: () {
                                setState(() {
                                  addOperations("3");
                                  inputField = 3;
                                  print('3');
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                padding: EdgeInsets.fromLTRB(30, 22, 30, 22),
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            Spacer(),
                            //button4 plus sign
                            InkWell(
                              onTap: () {
                                setState(() {
                                  addOperations("+");
                                  inputField = 9;
                                  print('9');
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.amber.shade700,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                child: Icon(
                                  CupertinoIcons.plus,
                                  size: 38,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        //row5
                        Row(
                          children: [
                            //button1 0 number
                            InkWell(
                              onTap: () {
                                setState(() {
                                  addOperations("0");
                                  inputField = 0;
                                  print('0');
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                padding: EdgeInsets.fromLTRB(30, 22, 30, 22),
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            Spacer(),
                            //button2 decimal sign
                            InkWell(
                              onTap: () {
                                setState(() {
                                  addOperations(".");
                                  inputField = 9;
                                  print('.');
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                padding: EdgeInsets.fromLTRB(34, 22, 34, 22),
                                child: Text(
                                  '.',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),

                            Spacer(),
                            //button3 equals to sign
                            InkWell(
                              onTap: () {
                                setState(() {
                                  print(allCalculations);

                                  // Create an expression parser
                                  Parser parser = Parser();
                                  Expression expression =
                                      parser.parse(allCalculations);

                                  // Create a context to evaluate the expression
                                  ContextModel contextModel = ContextModel();

                                  // Evaluate the expression
                                  double result = expression.evaluate(
                                      EvaluationType.REAL, contextModel);
                                  print(result.toStringAsFixed(2));
                                  inputField =
                                      double.parse(result.toStringAsFixed(2));
                                  allCalculations = "";
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.amber.shade700,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                padding: EdgeInsets.fromLTRB(62, 20, 62, 20),
                                child: Icon(
                                  CupertinoIcons.equal,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
