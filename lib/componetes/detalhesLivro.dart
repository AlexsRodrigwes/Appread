import 'package:flutter/material.dart';
import 'package:appread/componetes/buttons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:appread/componetes/dropdown.dart';

class DetalhesLivro extends StatefulWidget {
  final String titulo;
  final String autor;
  final int numeroDePaginas;
  final String status;
  final int classificacao;
  final String? imagem;

  DetalhesLivro({
    String? titulo,
    String? autor,
    int? numeroDePaginas,
    String? status,
    int? classificacao,
    String? imagem,
  })  : titulo = titulo ?? 'Título',
        autor = autor ?? 'Autor',
        numeroDePaginas = numeroDePaginas ?? 0,
        status = status ?? 'Status',
        classificacao = classificacao ?? 0,
        imagem = imagem ?? 'assets/img/mdi_image-add.png';
  @override
  _DetalhesLivroState createState() => _DetalhesLivroState();
}

class _DetalhesLivroState extends State<DetalhesLivro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: 320,
      color: Color(0xffF8F6F2),
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Titulo',
                        style: TextStyle(fontFamily: "YesevaOne", fontSize: 30),
                      ),
                      Text(
                        'Autor',
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 18,
                        ),
                      ),
                      Text('n° de paginas',
                          style: TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 18,
                          )),
                      SizedBox(height: 10),
                      Dropdown(
                          status: "Status",
                          opcao1: "Finalizado",
                          opcao2: "Prox. Leitura",
                          opcao3: "Lendo"),
                          SizedBox(height: 10),
                      Dropdown(
                          status: "Lido",
                          opcao1: "2023",
                          opcao2: "2022",
                          opcao3: "2022"),
                          SizedBox(height: 10),
                      
                      Container(
                        // child:
                        // Transform.scale(
                        // scale: 0.6,
                        child: RatingBar.builder(
                          itemSize: 30,
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),

                        itemBuilder: (context, _) => Image.asset(
                          'assets/img/Star.png',
                          color:Color(0xffEECB89),
                         
                        ),
                      
                        onRatingUpdate: (rating) {
                          // print(rating);
                        },
                      ),
                      ),
                      // InkWell(
                      //   onTap: () {
                      //     RatingBar.builder(
                      //       initialRating: 3,
                      //       minRating: 1,
                      //       direction: Axis.horizontal,
                      //       allowHalfRating: true,
                      //       itemCount: 5,
                      //       itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      //       itemBuilder: (context, _) => Icon(
                      //         Icons.star,
                      //         color: Colors.amber,
                      //       ),
                      //       onRatingUpdate: (rating) {
                      //         print(rating);
                      //       },
                      //     );
                      //   },
                      //   child: Container(
                      //     color: Colors.red,
                      //     child: Text(
                      //       'Classificação',
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color:
                          Color(0xffEECB89), // Especifique a cor da borda aqui
                      width: 2.0,
                      // Especifique a largura da borda aqui
                    ),
                  ),
                  child: Image.asset(
                    widget.imagem!,
                    width: 100,
                    height: 100,
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Tornar citações privadas',
                  style: TextStyle(
                    fontFamily: "Raleway",
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 10),
                Transform.scale(
                  scale: 0.8,
                  child: Switch(
                    activeTrackColor: Color(0xffEECB89),
                    activeColor: Color(0xffF8F6F2),
                    value: true,
                    onChanged: (value) {},
                  ),
                )
              ],
            ),
            Divider(color: Color(0xfff333236), height: 10, thickness: 1),
            Text(
              'Citações',
              style: TextStyle(
                fontFamily: "Raleway",
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              padding: EdgeInsets.all(10),
              decoration: ShapeDecoration(
                color: Color(0xFFF8F6F2),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2, color: Color(0xFFEECC8A)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),
            Buttonadd(
              altura: 50,
              largura: 230,
              title: 'Adicionar',
              borda: 12,
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}
