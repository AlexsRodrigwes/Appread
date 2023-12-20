import 'package:flutter/material.dart';
import 'package:appread/componetes/capa.dart';
import 'dart:math';

class Cardlivro3 extends StatelessWidget {
  const Cardlivro3({
    Key? key,
    required this.capa,
    required this.titulo,
    required this.autor,
    required this.pagina,
    required this.totalPaginas,
  }) : super(key: key);

  final String capa;
  final String titulo;
  final String autor;
  final int pagina;
  final int totalPaginas;

  @override
  Widget build(BuildContext context) {
    Widget inform(String texto, int tamanho, ) {
      return Text(texto,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: tamanho.toDouble(),
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
          ));
    }
Widget paginas(int paginaAtual, int totalPaginas, int tamanho) {
  return Text(
    '$paginaAtual/$totalPaginas',
    softWrap: true,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: tamanho.toDouble(),
      fontFamily: 'Raleway',
      fontWeight: FontWeight.w700,
    ),
  );
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
                paginas(pagina, totalPaginas, 14),
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
