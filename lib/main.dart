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
          //everything will be a row element
          body: SizedBox(
        width: 300,
        child: Column(
          children: [
            //data section
            Container(
              child: Text("1234"),
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
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
                        child: Text(
                          'AC',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Spacer(),
                      //button2
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(160, 160, 160, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
                        child: Icon(Icons.backspace),
                      ),
                      Spacer(),
                      //button3
                      Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(160, 160, 160, 1),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
                          child: Icon(Icons.percent)),
                      Spacer(),
                      //button4
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(160, 160, 160, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
                        child: Icon(CupertinoIcons.divide),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  //row2
                  Row(
                    children: [
                      //button1
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(160, 160, 160, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
                        child: Text(
                          '7',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Spacer(),
                      //button2
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(160, 160, 160, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
                        child: Text(
                          '8',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Spacer(),
                      //button3
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(160, 160, 160, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
                        child: Text(
                          '9',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Spacer(),
                      //button4
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(160, 160, 160, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
                        child: Icon(CupertinoIcons.multiply),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  //row3
                  Row(
                    children: [
                      //button1
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(160, 160, 160, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
                        child: Text(
                          '4',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Spacer(),
                      //button2
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(160, 160, 160, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
                        child: Text(
                          '5',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Spacer(),
                      //button3
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(160, 160, 160, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
                        child: Text(
                          '6',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Spacer(),
                      //button4
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(160, 160, 160, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
                        child: Icon(CupertinoIcons.minus),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  //row4
                  Row(
                    children: [
                      //button1
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(160, 160, 160, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
                        child: Text(
                          '1',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Spacer(),
                      //button2
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(160, 160, 160, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
                        child: Text(
                          '2',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Spacer(),
                      //button3
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(160, 160, 160, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
                        child: Text(
                          '3',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Spacer(),
                      //button4
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(160, 160, 160, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
                        child: Icon(CupertinoIcons.plus),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  //row5
                  Row(
                    children: [
                      //button1
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(160, 160, 160, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
                        child: Text(
                          '0',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Spacer(),
                      //button2
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(160, 160, 160, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        padding: EdgeInsets.fromLTRB(14, 14, 14, 14),
                        child: Text(
                          '.',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Spacer(),
                      //button3
                      Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(160, 160, 160, 1),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          padding: EdgeInsets.fromLTRB(45, 14, 45, 14),
                          child: Icon(CupertinoIcons.equal)),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
