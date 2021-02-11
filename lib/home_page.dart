import 'package:flutter/material.dart';
import 'package:quinta_app/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Hello World pantalla 1'),
            FlatButton(
              child: Text("Siguiente"),
              color: Colors.blue[100],
              onPressed: () {
                // Navigator.of(context).pushNamed("/secondPage");
                Navigator.of(context)
                    .push(
                  MaterialPageRoute(
                    // abrir second page
                    builder: (context) => SecondPage(),
                    // Pasar parametros en arguments
                    settings: RouteSettings(
                      arguments: ["Juan", true, 45],
                    ),
                  ),
                )
                    .then((resultado) {
                  // esperar resultado de pantalla que se abrio
                  print("Result: $resultado");
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
