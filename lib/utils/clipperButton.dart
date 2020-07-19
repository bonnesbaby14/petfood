import 'package:flutter/cupertino.dart';

class ClipperButton extends CustomClipper<Path>{

@override
Path getClip(Size size){
  Path path=Path();
  path.lineTo(size.width, 0);
  path.lineTo(size.width, size.height);
  path.lineTo(0, (size.height/2)+10);
  path.lineTo(size.width,0);
  
  
  return path;


}
@override
bool shouldReclip(CustomClipper<Path> oldClipper)=>true;

}