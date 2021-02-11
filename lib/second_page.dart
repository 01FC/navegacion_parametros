import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> parametroPag1 = ModalRoute.of(context).settings.arguments;

    print("Pantalla 1 dice: ${parametroPag1[0]}");
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Text('Hello World pantalla 1 dice: $parametroPag1'),
            ),
            MaterialButton(
              child: Text("OK"),
              color: Colors.red[100],
              onPressed: () {
                Navigator.of(context).pop("Clase de las 7am");
              },
            ),
          ],
        ),
      ),
    );
  }
}
