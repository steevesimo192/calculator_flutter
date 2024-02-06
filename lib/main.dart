import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String takenumber = '';
  int i = 0;

  Widget calculbutton(String btntxt, Color? btncolor, Color textcolor) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          takenumber = btntxt;
          i = int.parse(takenumber);
        });
      },
      child: Text(
        btntxt,
        style: TextStyle(
          color: textcolor,
          fontSize: 35,
        ),
      ),
      style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: btncolor,
          padding: EdgeInsets.all(23)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('calculatrice iphone'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    takenumber,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculbutton('C', Colors.grey, Colors.black),
                calculbutton('+/-', Colors.grey, Colors.black),
                calculbutton('%', Colors.grey, Colors.black),
                calculbutton('÷', Colors.amber[700], Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculbutton('7', Colors.grey[850], Colors.white),
                calculbutton('8', Colors.grey[850], Colors.white),
                calculbutton('9', Colors.grey[850], Colors.white),
                calculbutton('×', Colors.amber[700], Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculbutton('4', Colors.grey[850], Colors.white),
                calculbutton('5', Colors.grey[850], Colors.white),
                calculbutton('6', Colors.grey[850], Colors.white),
                calculbutton('−', Colors.amber[700], Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculbutton('1', Colors.grey[850], Colors.white),
                calculbutton('2', Colors.grey[850], Colors.white),
                calculbutton('3', Colors.grey[850], Colors.white),
                calculbutton('+', Colors.amber[700], Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[850],
                      padding: EdgeInsets.fromLTRB(34, 20, 120, 20),
                      shape: StadiumBorder()),
                ),
                calculbutton(',', Colors.grey[850], Colors.white),
                calculbutton('=', Colors.amber[700], Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
