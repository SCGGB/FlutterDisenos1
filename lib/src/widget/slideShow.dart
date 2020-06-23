import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class SlideShow extends StatelessWidget {


  final List<Widget> slides;
  final bool puntosArriba;
  final Color colorPrimario;
  final Color colorSecundario;
  final double bulletPrimario;
  final double bulletSecundario;

  SlideShow({
  @required  this.slides,
  this.puntosArriba=false,
  this.colorPrimario=Colors.blueAccent,
  this.colorSecundario=Colors.grey,
  this.bulletPrimario=12.0,
  this.bulletSecundario= 12.0,

  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
     create: (_)=> new _SliderShowModel(),
     child:  SafeArea(
            child: Center(
            child: Builder(
              builder: (BuildContext context){
                //se creo el builder porque es necesario para poder asignar los valores del provider                
                Provider.of<_SliderShowModel>(context).colorPrimario = this.colorPrimario;
                Provider.of<_SliderShowModel>(context).colorSecundario = this.colorSecundario;
                Provider.of<_SliderShowModel>(context).bulletPrimario = this.bulletPrimario;
                Provider.of<_SliderShowModel>(context).bulletSecundario = this.bulletSecundario;

                return _CrearEstructuraSlideShow(puntosArriba: puntosArriba, slides: slides);
              }
              )
            
            ),
     ),
    );
  }
}

class _CrearEstructuraSlideShow extends StatelessWidget {
  const _CrearEstructuraSlideShow({
    Key key,
    @required this.puntosArriba,
    @required this.slides,
  }) : super(key: key);

  final bool puntosArriba;
  final List<Widget> slides;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if(this.puntosArriba )
          _Dots(this.slides.length),
        Expanded(
          child: _Slides(this.slides)
          ),
        if(!this.puntosArriba)
          _Dots(this.slides.length),
      ],
    );
  }
}



class _Dots extends StatelessWidget {

  final int totalSlides;


  _Dots(
    this.totalSlides
    );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(this.totalSlides, (index) => _Dot(index)),
      ),
    );
  }
}

class _Dot extends StatelessWidget {

  final int index;

   _Dot( this.index) ;


  @override
  Widget build(BuildContext context) {
  
  //final pageViewIndex =  Provider.of<_SliderShowModel>(context).currentPage;
  final slideShowModel = Provider.of<_SliderShowModel>(context);
  double tamano = 0;
  Color color;

if (slideShowModel.currentPage >= index -0.5 && slideShowModel.currentPage < index + 0.5){
   tamano = slideShowModel.bulletPrimario;
   color = slideShowModel.colorPrimario;

}else{
    tamano = slideShowModel.bulletSecundario;
    color = slideShowModel.colorSecundario;
}
                 

  

    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      width: tamano,
      height: tamano,

      //para separar los puntitos
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}

class _Slides extends StatefulWidget {

  final List<Widget> slides;

  _Slides(this.slides);


  @override
  __SlidesState createState() => __SlidesState();
}

class __SlidesState extends State<_Slides> {


  final pageViewController = new PageController();

  @override
  void initState() {
    pageViewController.addListener(() {
    // print('Pagina actual ${pageViewController.page}');
      //Actualizar el provider, sliderModel
       Provider.of<_SliderShowModel>(context,listen: false).currentPage = pageViewController.page;
    });
     
    super.initState();
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {



    return Container(    
      child: PageView(
        controller: pageViewController,
/*         children: <Widget>[
          _Slide('assets/svgs/slide-1.svg'),
          _Slide('assets/svgs/slide-2.svg'),
          _Slide('assets/svgs/slide-4.svg')

        ], */
        children: widget.slides.map((slide) => _Slide(slide)).toList(),
      ),
      
    );
  }
}

class _Slide extends StatelessWidget {

  final Widget slide;
  _Slide(this.slide);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(30),
      child: slide,
    );
  }
  }



  class _SliderShowModel with ChangeNotifier{

  double _currentPage =0;
  Color _colorPrimario=Colors.blueAccent;
  Color _colorSecundario=Colors.grey;
  double _bullerPrimario=12.0;
  double _bulletSecundario=12.0;

  double get currentPage => this._currentPage;

  set currentPage(double pagina){
    this._currentPage = pagina;
    notifyListeners();
  }


  Color get colorPrimario => this._colorPrimario;
  set colorPrimario (Color color){
    this._colorPrimario=color;

  }

    Color get colorSecundario => this._colorSecundario;
  set colorSecundario (Color color){
    this._colorSecundario=color;

  }

  double get bulletPrimario =>this._bullerPrimario;
  set bulletPrimario(double bulletPrim){
    this._bullerPrimario=bulletPrim;
  }

    double get bulletSecundario =>this._bulletSecundario;
  set bulletSecundario(double bulletSec){
    this._bulletSecundario=bulletSec;
  }



}
