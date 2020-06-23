import 'package:flutter/material.dart';
import 'package:headers/src/widget/radia_progress.dart';

class GraficasCircularesPage extends StatefulWidget {


  @override
  _GraficasCircularesPageState createState() => _GraficasCircularesPageState();
}

class _GraficasCircularesPageState extends State<GraficasCircularesPage> {
  
  double porcentaje=0.0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: (){
          setState(() {
            porcentaje+=10;
            if(porcentaje>100){
              porcentaje=0;
            }
          });
        }
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CustomRadialProgress(porcentaje: porcentaje,color: Colors.red),
              CustomRadialProgress(porcentaje: porcentaje,color: Colors.blueAccent)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CustomRadialProgress(porcentaje: porcentaje,color: Colors.greenAccent),
              CustomRadialProgress(porcentaje: porcentaje,color: Colors.pinkAccent)
            ],
          )          
        ],
      )
    );
  }
}

class CustomRadialProgress extends StatelessWidget {

  final Color color; 
  const CustomRadialProgress({
    @required this.porcentaje,
    @required this.color
  });

  final double porcentaje;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:100,
      height: 100,
      child: RadiaProgress(
        porcentaje: porcentaje,
        colorPrimario: color,
        colorSecuendario: Colors.grey,
        grosorSecundario: 8.0,
        ),
    );
  }
}