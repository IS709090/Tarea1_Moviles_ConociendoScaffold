import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

void main() => runApp(MyApp());

class _MyAppState extends State<MyApp> {
  var counter = 0;
  var emailColor = Colors.blue;
  var phoneColor = Colors.blue;
  var routeColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Builder(builder: (context) {
        return Scaffold(
          body: Center(
            child: Column(children: [
              Image.network(
                  "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg",
                  fit: BoxFit.contain),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            flex: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "El ITESO, Universidad Jesuita de Guadalajara",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "San Pedro Tlaquepaque, Jal",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            )),
                        Expanded(
                            flex: 2,
                            child: IconButton(
                              iconSize: 40,
                              color: Color.fromARGB(255, 23, 28, 166),
                              icon: Icon(Icons.thumb_up_sharp),
                              onPressed: () {
                                counter++;
                                print(counter);
                                setState(() {
                                  counter = counter;
                                });
                              },
                            )),
                        Expanded(
                            flex: 2,
                            child: IconButton(
                              iconSize: 40,
                              color: Color.fromARGB(255, 166, 23, 23),
                              icon: Icon(Icons.thumb_down_sharp),
                              onPressed: () {
                                counter--;
                                print(counter);
                                setState(() {
                                  counter = counter;
                                });
                              },
                            )),
                        Expanded(
                          flex: 1,
                          child: Text(
                            counter.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 48.0, left: 25, right: 25, bottom: 48),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  IconButton(
                                    iconSize: 70,
                                    color: emailColor,
                                    icon: Icon(Icons.email_sharp),
                                    onPressed: () {
                                      setState(() {
                                        if (emailColor == Colors.red) {
                                          emailColor = Colors.blue;
                                        } else {
                                          emailColor = Colors.red;
                                        }
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text("Enviar Correo",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w700)),
                                          ),
                                        );
                                      });
                                    },
                                  ),
                                  Text(
                                    "Correo",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              )),
                          Expanded(
                              flex: 4,
                              child: Column(
                                children: [
                                  IconButton(
                                    iconSize: 70,
                                    color: phoneColor,
                                    icon: Icon(Icons.phone_in_talk_sharp),
                                    onPressed: () {
                                      setState(() {
                                        if (phoneColor == Colors.red) {
                                          phoneColor = Colors.blue;
                                        } else {
                                          phoneColor = Colors.red;
                                        }
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text("Hacer Llamada",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w700)),
                                          ),
                                        );
                                      });
                                    },
                                  ),
                                  Text(
                                    "Llamada",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              )),
                          Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  IconButton(
                                    iconSize: 70,
                                    color: routeColor,
                                    icon: Icon(Icons.alt_route_sharp),
                                    onPressed: () {
                                      setState(() {
                                        if (routeColor == Colors.red) {
                                          routeColor = Colors.blue;
                                        } else {
                                          routeColor = Colors.red;
                                        }
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text("Ir al ITESO",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w700)),
                                          ),
                                        );
                                      });
                                    },
                                  ),
                                  Text(
                                    "Ruta",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 10,
                          child: Text(
                              "El ITESO, Universidad Jesuita de Guadalajara, es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957. La institución forma parte del Sistema Universitario Jesuita que integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara. Fundada en el año de 1957 por el ingeniero José Fernández del Valle y Ancira, entre otros, la universidad ha tenido una larga trayectoria. A continuación se presenta la historia de la institución en periodos de décadas.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontSize: 18)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ]),
          ),
        );
      }),
    );
  }
}
