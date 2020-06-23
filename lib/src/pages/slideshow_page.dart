import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:headers/src/widget/slideShow.dart';

class SlideShowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(child: MiSlideShow()),
          Expanded(child: MiSlideShow())
        ],
      )
    );
  }
}

class MiSlideShow extends StatelessWidget {
  const MiSlideShow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideShow(
    //  puntosArriba: true,
      colorPrimario: Colors.red,
      colorSecundario: Colors.grey,
      bulletPrimario:20,
      bulletSecundario:12,
      slides: <Widget>[
        SvgPicture.asset('assets/svgs/slide-1.svg'),
        SvgPicture.asset('assets/svgs/slide-2.svg'),
      ],
    );
  }
}