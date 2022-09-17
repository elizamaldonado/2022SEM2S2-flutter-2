import "package:flutter/material.dart";

class DetallePage extends StatelessWidget {
  DetallePage(
      {super.key,
      required this.valorIMC,
      required this.estado,
      required this.resultadoEstado});
  double valorIMC;
  String estado = "";
  String resultadoEstado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detalle del Calculo"),
        ),
        //body: Column(child: Text(valorIMC.toString())),
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Resultados",
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 3,
                child: Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 114, 112, 112),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: 
                      )
                    ],
                  )
                 ),
                ))
          ],
        ));
  }
}
