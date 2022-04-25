import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: Column(children: [
            Image.network(
                "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg",
                fit: BoxFit.contain),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 50),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      "El ITESO, Universidad Jesuita de Guadalajara",
                      style: TextStyle(fontSize: 30),
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
