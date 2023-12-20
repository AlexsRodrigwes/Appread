import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Buttonadd extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final int altura, largura;
  int fonte;
  final int borda;

  Buttonadd({
    required this.altura,
    required this.largura,
    required this.title,
    this.fonte = 24,
    this.borda = 20,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: altura.toDouble(),
        width: largura.toDouble(),
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            title,
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: fonte.toDouble(),
              fontWeight: FontWeight.w700,
              fontFamily: "Raleway",
            ),
          ),
        ),
        decoration: ShapeDecoration(
          color: Color(0xFF333236),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borda.toDouble()),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
      ),
    );
  }
}
