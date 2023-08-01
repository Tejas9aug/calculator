import 'package:flutter/material.dart';

class CalcPage extends StatefulWidget {
  @override
  _CalcPageState createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {

  var n1,n2,sum;

  final TextEditingController t1 = TextEditingController(text: '');
  final TextEditingController t2 = TextEditingController(text: '');

  void Addition() {
    setState((){
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1+ n2;
    });
  }

  void sub() {
    setState((){
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1-n2;
    });
  }

  void mul() {
    setState((){
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum= n1* n2;
    });
  }

  void div() {
    setState((){
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1/n2;
    });
  }

  void clear(){
    setState(() {
      t1.text='';
      t2.text='';

    });
  }

  void clearOut(){
    setState(() {
      sum= 0;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Calculator'),
      ),
      body: Container(
        padding:  const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Output: $sum',
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
              ),
            ),

            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  hintText: 'enter first number.'
              ),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  hintText: 'enter second number.'
              ),
              controller: t2,
            ),
            const Padding(
              padding:  EdgeInsets.only(top: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: <Widget>[
                  MaterialButton(
                    child: Text(
                        '+'
                    ),
                    color: Colors.grey,
                    onPressed: Addition,
                  ),
                  MaterialButton(
                    child: Text(
                        '-'
                    ),
                    color: Colors.grey,

                    onPressed: sub,
                  ),

                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text(
                      '*'
                  ),
                  color: Colors.grey,

                  onPressed: mul,
                ),
                MaterialButton(
                  child: Text(
                      '/'
                  ),
                  color: Colors.grey,

                  onPressed: div,
                ),

              ],
            ),
            Padding(
              padding:  EdgeInsets.only(top: 10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(width: 4,),
                MaterialButton(
                  child: Text(
                      'clear'
                  ),
                  color: Colors.grey,

                  onPressed: clear,
                ),
                SizedBox(width: 5,),
                MaterialButton(
                  child: Text(
                      'clear output'
                  ),
                  color: Colors.grey,

                  onPressed: clearOut,
                ),
              ],
            )
          ],
        ),

      ),
    );
  }
}