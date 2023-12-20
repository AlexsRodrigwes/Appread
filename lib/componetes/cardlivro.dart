import 'package:flutter/material.dart';
import 'package:appread/componetes/capa.dart';

class Cardlivro extends StatelessWidget {
  const Cardlivro({
    Key? key,
    required this.capa,
    required this.titulo,
    required this.autor,
    required this.paginas,
    required this.genero,
  }) : super(key: key);

  final String capa;
  final String titulo;
  final String autor;
  final String genero;
  final String paginas;

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
                inform(genero, 14),
                inform(paginas, 14),
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
