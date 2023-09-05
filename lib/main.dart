import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyCalc());
}

class MyCalc extends StatefulWidget {
  const MyCalc({super.key});

  @override
  State<MyCalc> createState() => _MyCalcState();
}

class _MyCalcState extends State<MyCalc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Column(
                      children: [
                        Spacer(),
                        //realtime
                        Text(
                          "1234",
                          style: TextStyle(
                              fontSize: 60, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        //answer
                        Text(
                          "1234",
                          style: TextStyle(
                              fontSize: 70, fontWeight: FontWeight.w500),
                        ),
                        Spacer()
                      ],
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
                            //button1
                            Container(
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
                            Spacer(),
                            //button2
                            Container(
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
                            Spacer(),
                            //button3
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
                            //button4
                            Container(
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
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        //row2
                        Row(
                          children: [
                            //button1
                            Container(
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
                            Spacer(),
                            //button2
                            Container(
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
                            Spacer(),
                            //button3
                            Container(
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
                            Spacer(),
                            //button4
                            Container(
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
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        //row3
                        Row(
                          children: [
                            //button1
                            Container(
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
                            Spacer(),
                            //button2
                            Container(
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
                            Spacer(),
                            //button3
                            Container(
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
                            Spacer(),
                            //button4
                            Container(
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
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        //row4
                        Row(
                          children: [
                            //button1
                            Container(
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
                            Spacer(),
                            //button2
                            Container(
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
                            Spacer(),
                            //button3
                            Container(
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
                            Spacer(),
                            //button4
                            Container(
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
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        //row5
                        Row(
                          children: [
                            //button1
                            Container(
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
                            Spacer(),
                            //button2
                            Container(
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

                            Spacer(),
                            //button3
                            Container(
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
                                )),
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
