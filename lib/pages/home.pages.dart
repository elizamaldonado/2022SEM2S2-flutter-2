// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:noticias/pages/detalle_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int valorpeso = 50;
  int valoredad = 10;
  double _currentSliderValue = 50;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calcula IMC")),
      body: Column(children: [
        Expanded(
            child: Container(
          color: Color.fromARGB(255, 9, 14, 33),
          child: Row(
            // primer expande
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // ignore: sort_child_properties_last
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.man,
                        size: 100,
                      ),
                      Text("Hombre")
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 29, 30, 51),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.woman,
                        size: 100,
                      ),
                      Text("Mujer")
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 29, 30, 51),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              )),
            ],
          ),
        )),
        //cuadro medio
        Expanded(
            child: Container(
          color: Color.fromARGB(255, 9, 14, 33),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Estatura"),
                  Text(_currentSliderValue.toString()),
                  Slider(
                    value: _currentSliderValue,
                    max: 250,
                    divisions: 250,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 29, 30, 51),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        )),

        //tercer cuadro
        Expanded(
            child: Container(
          color: Color.fromARGB(255, 9, 14, 33),
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // ignore: sort_child_properties_last
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Peso"),
                      Text(valorpeso.toString(),
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  valorpeso += 1;
                                });
                              },
                              // ignore: prefer_const_constructors
                              icon: Icon(
                                Icons.add_circle,
                                size: 40,
                              )),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  valorpeso -= 1;
                                });
                              },
                              // ignore: prefer_const_constructors
                              icon: Icon(
                                Icons.remove_circle,
                                size: 40,
                              )),
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 29, 30, 51),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // ignore: sort_child_properties_last
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Edad"),
                      Text(valoredad.toString(),
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  valoredad += 1;
                                });
                              },
                              // ignore: prefer_const_constructors
                              icon: Icon(
                                Icons.add_circle,
                                size: 40,
                              )),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  valoredad -= 1;
                                });
                              },
                              // ignore: prefer_const_constructors
                              icon: Icon(
                                Icons.remove_circle,
                                size: 40,
                              )),
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    // ignore: prefer_const_constructors
                    color: Color.fromARGB(255, 29, 30, 51),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              )),
            ],
          ),
        )),

        //cuarto cuadro

        GestureDetector(
          onTap: () {
            double valorMetro = _currentSliderValue / 100;
            double calculoIMC = valorpeso / (valorMetro * valorMetro);
            String estado = "";
            String resulEstado = "";
            Color colorEstado = Colors.black;

            if (calculoIMC < 18.5) {
              estado = "Bajo Peso";
              resulEstado = "Tiene un peso corporal bajo";
              colorEstado = Colors.orange;
            }

            if (calculoIMC >= 18.5 && calculoIMC <= 24.9) {
              estado = "Normal";
              resulEstado = "Tiene un peso corporal normal, buen trabajo";
              colorEstado = Colors.green;
            }

            // print(calculoIMC);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => DetallePage(
                          valorIMC: calculoIMC,
                          estado: estado,
                          resultadoEstado: resulEstado,
                        ))));
          },
          child: Container(
            height: 100,
            color: Color.fromARGB(255, 228, 15, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Calcular.",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
