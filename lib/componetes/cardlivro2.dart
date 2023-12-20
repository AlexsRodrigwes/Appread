import 'package:flutter/material.dart';
import 'package:appread/componetes/capa.dart';
import 'dart:math';


class Cardlivro2 extends StatelessWidget {
  const Cardlivro2({
    Key? key,
    required this.capa,
    required this.titulo,
    required this.autor,
    required this.status,
    required this.classificacao,
  }) : super(key: key);

  final String capa;
  final String titulo;
  final String autor;
  final int status;
  final int classificacao;
List<Widget> createImageList( int classificacao) {
  List<Widget> images = [];
  if (classificacao > 5){
    classificacao = 5;
  }
  for (int i = 0; i < classificacao; i++) {
    images.add(Image.asset('assets/img/Star.png', width: 20, height: 20,));
  }
  return images;
}
  

  @override
  Widget build(BuildContext context) {
    Widget inform(String texto, int tamanho) {
      return Text(texto,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: tamanho.toDouble(),
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
          ));
    }

    return Container(
        padding: EdgeInsets.all(10),
        decoration: ShapeDecoration(
          color: Color(0xFFF8F6F2),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 2, color: Color(0xFFEECB89)),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(titulo,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'YesevaOne',
                      fontWeight: FontWeight.w800,
                    )),
                SizedBox(
                  height: 10,
                ),
                inform(autor, 14),
                inform(status.toString()+'%', 14),
                Row(
                  children: createImageList(classificacao),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Capa(
              url: capa,
              size: 85,
            ),
          ],
        ));
  }
}
