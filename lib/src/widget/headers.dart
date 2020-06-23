import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      color: Color(0xffabdee5),
    );
  }
}


class HeaderBordeRedondeado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      decoration: BoxDecoration(
      color: Color(0xffabdee5),
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70),bottomRight: Radius.circular(70))

      ),
    );
  }
}


class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
     // color: Color(0xffabdee5),
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}


class _HeaderDiagonalPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
      final paint = Paint();

      //Propiedades del lapiz /paint

      paint.color = Color(0xffabdee5);
      paint.style= PaintingStyle.fill;  //fill y stroke
      paint.strokeWidth = 2;

      final path = Path();

      //Dibujar con el path y el lápiz
      path.moveTo(0, size.height *0.45);
      path.lineTo(size.width, size.height *0.30);
      path.lineTo(size.width, 0);
      path.lineTo(0, 0);
      


      canvas.drawPath(path, paint);

    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {    
    return true;
  }


}


class HeaderTriangular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
     // color: Color(0xffabdee5),
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
    );
  }
}


class _HeaderTriangularPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
      final paint = Paint();

      //Propiedades del lapiz /paint

      paint.color = Color(0xffabdee5);
      paint.style= PaintingStyle.fill;  //fill y stroke
      paint.strokeWidth = 2;

      final path = Path();

      //Dibujar con el path y el lápiz
      path.moveTo(0, 0); //inicio default del paint
      //Triangulo hacia la derecha
     // path.lineTo(size.width, size.height);
     // path.lineTo(size.width, 0);
     // path.lineTo(0, 0); esta linea cierra la figura, pero el fill lo hace en automatico

      //Triangulo hacia izquierda
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
      path.lineTo(0, 0);
      


      canvas.drawPath(path, paint);

    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {    
    return true;
  }



}




class HeaderPico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
     // color: Color(0xffabdee5),
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
    );
  }
}


class _HeaderPicoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
      final paint = Paint();

      //Propiedades del lapiz /paint

      paint.color = Color(0xffabdee5);
      paint.style= PaintingStyle.fill;  //fill y stroke
      paint.strokeWidth = 2;
      paint.strokeWidth=20;

      final path = Path();

      //Dibujar con el path y el lápiz
     path.lineTo(0, size.height *.25);
     path.lineTo(size.width*0.5, size.height *.30);
     path.lineTo(size.width, size.height *.25);
     path.lineTo(size.width, 0);


    
      canvas.drawPath(path, paint);

    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {    
    return true;
  }

  }


  class HeaderCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
     // color: Color(0xffabdee5),
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
    );
  }
}


class _HeaderCurvoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
      final paint = Paint();

      //Propiedades del lapiz /paint

      paint.color = Color(0xffabdee5);
      paint.style= PaintingStyle.fill;  //fill y stroke
      paint.strokeWidth = 2;
      paint.strokeWidth=20;

      final path = Path();

      //Dibujar con el path y el lápiz
     path.lineTo(0, size.height *.25);
     //x1 y y1 es el punto donde se encuentra el eje de curvatura
     //path.quadraticBezierTo(size.width*.50,size.height*0.40 , size.width, size.height *.25); 
     path.quadraticBezierTo(size.width*.50,size.height*0.40 , size.width, size.height *.25);    
     path.lineTo(size.width, 0);
  


    
      canvas.drawPath(path, paint);

    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {    
    return true;
  }

  }



class HeaderWave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
     // color: Color(0xffabdee5),
      child: CustomPaint(
        painter: _HeaderWavePainter(),
      ),
    );
  }
}


class _HeaderWavePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
      final paint = Paint();

      //Propiedades del lapiz /paint

      paint.color = Color(0xffabdee5);
      paint.style= PaintingStyle.fill;  //fill y stroke
      paint.strokeWidth = 2;
      paint.strokeWidth=20;

      final path = Path();

      //Dibujar con el path y el lápiz
     path.lineTo(0, size.height *.25);
     //x1 y y1 es el punto donde se encuentra el eje de curvatura
     ///el mio
     //path.quadraticBezierTo(size.width*.40,size.height*0.40 , size.width * .50 , size.width *.50);    
     //path.quadraticBezierTo(size.width*.70,size.height*0.20 , size.width, size.height *.25);    
     //Fernando
     path.quadraticBezierTo(size.width*.25,size.height*0.30 , size.width * .50 , size.height *.25);    
     path.quadraticBezierTo(size.width*.75,size.height*0.20 , size.width, size.height *.25);    
     path.lineTo(size.width, 0);
  


    
      canvas.drawPath(path, paint);

    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {    
    return true;
  }

  }




class HeaderWaveGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
     // color: Color(0xffabdee5),
      child: CustomPaint(
        painter: _HeaderWaveGradientPainter(),
      ),
    );
  }
}


class _HeaderWaveGradientPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

      final Rect rect = new Rect.fromCircle(
        center: Offset(0.0, 55.0),
        radius: 180
      );
      final Gradient gradiente = new LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          Color(0xff6D05E8),
          Color(0xffC012FF),
          Color(0xff6D05FA),
        ],
        //indica donde inicia y termina cada color, si se agrega otro color se tiene que agregar otro stop
        stops: [
          0.2,
          0.5,
          1.0
        ]
      );

      final paint = Paint()..shader =gradiente.createShader(rect);

      //Propiedades del lapiz /paint

      paint.style= PaintingStyle.fill;  //fill y stroke
      paint.strokeWidth = 2;
      paint.strokeWidth=20;

      final path = Path();

      //Dibujar con el path y el lápiz
     path.lineTo(0, size.height *.25);
     //x1 y y1 es el punto donde se encuentra el eje de curvatura
     ///el mio
     //path.quadraticBezierTo(size.width*.40,size.height*0.40 , size.width * .50 , size.width *.50);    
     //path.quadraticBezierTo(size.width*.70,size.height*0.20 , size.width, size.height *.25);    
     //Fernando
     path.quadraticBezierTo(size.width*.25,size.height*0.30 , size.width * .50 , size.height *.25);    
     path.quadraticBezierTo(size.width*.75,size.height*0.20 , size.width, size.height *.25);    
     path.lineTo(size.width, 0);
  


    
      canvas.drawPath(path, paint);

    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {    
    return true;
  }

  }



