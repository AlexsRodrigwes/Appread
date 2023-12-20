import 'package:flutter/material.dart';


class Capa extends StatelessWidget { 
  final String url; 
  final int? size;
  const Capa({Key? key, required this.url, this.size}) : super(key: key);
  Size calculateSize(int size) {
  double originalRatio = 100 / 150;
  double newWidth = size.toDouble();
  double newHeight = size / originalRatio;
  return Size(newWidth, newHeight);
}
  @override
  Widget build(BuildContext context) {
    return Container(

      width: calculateSize(size!).width,
      height:calculateSize(size!).height,
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: NetworkImage(
            url,
          ),
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
