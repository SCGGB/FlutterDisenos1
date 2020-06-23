import 'package:flutter/material.dart';

class CuadradoAnimadoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _CuadradoAnimado()),
    );
  }
}

class _CuadradoAnimado extends StatefulWidget {

  @override
  __CuadradoAnimadoState createState() => __CuadradoAnimadoState();
}

class __CuadradoAnimadoState extends State<_CuadradoAnimado> with SingleTickerProviderStateMixin {

  @override
  void initState() {      
    super.initState();

controller = new AnimationController(
      vsync: this,duration: new Duration(milliseconds: 4000));

      moverDerecha = Tween(begin: 0.0,end:50.0).animate(
        CurvedAnimation(parent: controller, curve: Interval(0,.25,curve: Curves.bounceIn))
      );          

      moverArriba = Tween(begin: 50.0,end: -20.0).animate(
        CurvedAnimation(parent: controller, curve: Interval(0.25,0.50,curve: Curves.bounceIn))
      );  

      moverIzquierda = Tween(begin: 50.0,end: -20.0).animate(
        CurvedAnimation(parent: controller, curve: Interval(0.50,0.75,curve: Curves.bounceIn))
      );     

      moverAbajo = Tween(begin: 0.0,end: 50.0).animate(
        CurvedAnimation(parent: controller, curve: Interval(0.75,1.0,curve: Curves.bounceIn))
      );           


            controller.addListener(() {
       // print('Status:  ${controller.status}');
       if(controller.status == AnimationStatus.completed){
        // controller.reverse();      
        //controller.reset();           
        controller.repeat();
        }
      }); 
  }

  @override
  void dispose() {

    super.dispose();
    controller.dispose();
  }

  AnimationController controller;

  Animation<double> moverDerecha;
  Animation<double> moverArriba;
  Animation<double> moverIzquierda;
  Animation<double> moverAbajo;  
  //animaciones
  @override
  Widget build(BuildContext context) {
    controller.forward();
    return AnimatedBuilder(
      animation: controller,
      child: _Rectangulo(),
      builder: (BuildContext context, Widget child) {
        return Transform.translate(
          offset: Offset(moverDerecha.value,0),
         child: Transform.translate(
           offset: Offset(0, moverArriba.value),
           child: Transform.translate(
             offset: Offset(moverIzquierda.value, 0),
             child: Transform.translate(
               offset: Offset(0, moverAbajo.value),
               child: child))),
        );
      }
    );
  }


}

class _Rectangulo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Container(
       width: 70,
       height: 70,
       decoration: BoxDecoration(
         color: Colors.blue
       ),
     );
   }
}