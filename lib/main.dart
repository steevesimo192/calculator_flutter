import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
  ///..........varaible d'etat...........///
  String takenumber = '';
  // String takenumber1 = '';
  int i = 0;
  // int j = 0;
  String nombreEntre = '';
  //String nombreEntre1 = '';
  // String nombreEntre2 = '';
  int resultat = 0;
  //int resultat1 = 0;
  // int resultat2 = 0;
  // String displayText = '';
  // String firstNumber = '';
  // String secondNumber = '';
  // String operation = '';

  Widget calculbutton(String btntxt, Color? btncolor, Color textcolor) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          if (nombreEntre.contains("=")) {
            if (nombreEntre.contains("+")) {
              resultat = int.parse(nombreEntre.split("+")[0]) +
                  int.parse(nombreEntre.split("+")[1].split("=")[0]);
              nombreEntre = resultat.toString();
            } else if (nombreEntre.contains("-")) {
              resultat = int.parse(nombreEntre.split("-")[0]) -
                  int.parse(nombreEntre.split("-")[1].split("=")[0]);
              nombreEntre = resultat.toString();
            }

            // else if (nombreEntre.contains("*")) {
            //   resultat = int.parse(nombreEntre.split("*")[0]) *
            //       int.parse(nombreEntre.split("*")[1].split("=")[0]);
            //   nombreEntre = resultat.toString();
            // } else if (nombreEntre.contains("/")) {
            //   resultat = int.parse(nombreEntre.split("/")[0]) ~/
            //       int.parse(nombreEntre.split("/")[1].split("=")[0]);
            // } else {

            //   // nombreEntre1 = nombreEntre1 + btntxt;
          }
          nombreEntre = nombreEntre + btntxt;
          takenumber = btntxt;
          i = int.parse(takenumber);
          //j = int.parse(takenumber);
        });

/////................fonction pour les fonctions numeriques...................//////

        // void numberButtonPressed(String btntxt) {
        //   setState(() {
        //     if (operation.isEmpty) {
        //       firstNumber = btntxt;
        //     } else {
        //       secondNumber = btntxt;
        //     }
        //     displayText = btntxt;
        //   });
        // }

        // setState(() {
        //   if (nombreEntre.contains('-')) {
        //     resultat = int.parse(nombreEntre.split('-')[0]) +
        //         int.parse(nombreEntre.split('-')[1].split('=')[0]);
        //     nombreEntre = resultat.toString();
        //   } else {
        //     nombreEntre = nombreEntre + btntxt;
        //   }
        //   takenumber = btntxt;
        //   i = int.parse(takenumber);
        // });

        // setState(() {
        //   if (nombreEntre2.contains("=")) {
        //     resultat2 = int.parse(nombreEntre2.split("×")[0]) +
        //         int.parse(nombreEntre2.split("×")[1].split("=")[0]);
        //     nombreEntre2 = resultat2.toString();
        //   } else {
        //     nombreEntre2 = nombreEntre2 + btntxt;
        //   }
        //   takenumber = btntxt;
        //   i = int.parse(takenumber);
        // });
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
                    nombreEntre,

                    //takenumber,
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
                  onPressed: () {
                    setState(() {
                      takenumber = '0';
                      i = int.parse(takenumber);
                    });
                    // setState(() {
                    //   takenumber = '0';
                    //   i = int.parse(takenumber);
                    // });
                  },
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
