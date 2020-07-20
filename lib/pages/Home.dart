import 'package:flutter/material.dart';
import 'package:petfood/utils/clipper.dart';
import 'package:petfood/utils/clipperButton.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:petfood/utils/Progress.dart';
class Home extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: Clipper(),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .75,
              child: Stack(children: <Widget>[
                Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    child: Image.asset(
                      "img/kittylogin.jpg",
                      fit: BoxFit.cover,
                      width: 420,
                      height: 54,
                    )),
                Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * .40,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        colors: [
                          Color(0xFF42BBFF).withOpacity(.8),
                          Color(0xFF9F44D3).withOpacity(.05),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      )),
                    )),
              ]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "   Pet",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w300,
                      )),
                  TextSpan(
                      text: "Food",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      )),
                ]),
              ),
              // ClipPath(
              //   clipper: ClipperButton(),
              //   child: Container(
              //     child: Center(
              //       child: Padding(
              //         padding: EdgeInsets.only(left: 45),
              //         child: Icon(Icons.arrow_forward_ios, color: Colors.white),
              //       ),
              //     ),
              //     width: 135,
              //     height: 135,
              //     decoration: BoxDecoration(
              //         gradient: LinearGradient(
              //       colors: [
              //         Color(0xFF42BBFF).withOpacity(.8),
              //         Color(0xFF9F44D3).withOpacity(.8),
              //       ],
              //       begin: Alignment.bottomCenter,
              //       end: Alignment.topCenter,
              //     )),
              //   ),
              // )
              Padding(

                child:_AnimatedLiquidCircularProgressIndicator(),
              padding: EdgeInsets.fromLTRB(0, 0, 40, 0) ,
              ),
            ],
          )
        ],
      ),
    );
  }
}



class _AnimatedLiquidCircularProgressIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>
      _AnimatedLiquidCircularProgressIndicatorState();
}

class _AnimatedLiquidCircularProgressIndicatorState
    extends State<_AnimatedLiquidCircularProgressIndicator>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );

    _animationController.addListener(() => setState(() {if(percentage==99){
      print("Lista");
    }}));
    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final percentage = _animationController.value * 100;
    
    return Center(
      child: SizedBox(
        width: 100.0,
        height: 100.0,
        child: LiquidCircularProgressIndicator(
          value: _animationController.value,
          backgroundColor: Colors.purpleAccent,
          valueColor: AlwaysStoppedAnimation(Colors.blue),
          center: Text(
            "${percentage.toStringAsFixed(0)}%",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}