import 'package:flutter/material.dart';
import 'capa.dart';

class Lista3 extends StatefulWidget {
  final String capa, capa2, capa3, titulo;

  @override
  _Lista3State createState() => _Lista3State();

  Lista3({
    required this.capa,
    required this.capa2,
    required this.capa3,
    required this.titulo,
  });
}

class _Lista3State extends State<Lista3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 5, right: 10, top: 20),
          child: Text(
            widget.titulo ?? 'Sem título',
            style: TextStyle(
                fontSize: 22,
                fontFamily: "Raleway",
                fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          decoration: ShapeDecoration(
            color: Color(0xFFF8F6F2),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 2, color: Color(0xFFEECB89)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Capa(
                url: widget.capa,
                size: 85,
              ),
              Capa(
                url: widget.capa2,
                size: 85,
              ),
              Capa(
                url: widget.capa3,
                size: 85,
              ),
            ],
          ),
        )
      ],
    );
  }
}