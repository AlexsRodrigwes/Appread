import 'package:appread/componetes/barranav.dart';
import 'package:flutter/material.dart';
import 'package:appread/componetes/cardlivro.dart';
import 'package:appread/componetes/buscar.dart';
import 'package:appread/componetes/poppa.dart';

class Pesquisa extends StatelessWidget {
  const Pesquisa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffF8F6F2),
        toolbarHeight: 130,
        flexibleSpace: Align(
          alignment: Alignment.center,
          child: Container( 
            padding: EdgeInsets.only(left: 0),
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Container(
                padding: EdgeInsets.only(top: 40),
                child:IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/img/voltar.png',
                  width: 32,
                  height: 20,
                )),),
              SizedBox(height: 5),
              Buscar()
                ]),

                
          ),
        ),
      ),
      body: ListView( // esta faltando a quebra de linha dos titulos
        padding: EdgeInsets.only(left: 35, right: 35, top: 40),
        children: [
          InkWell(onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          insetPadding: EdgeInsets.all(0),
                          alignment: Alignment.center,
                          clipBehavior: Clip.antiAlias,
                          surfaceTintColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Popap(),
                        );
                      },
                    );
                  },
            child:
          Cardlivro(
            capa:
                'https://m.media-amazon.com/images/I/91M9xPIf10L._SL1500_.jpg',
            titulo: 'O Hobbit',
            autor: 'J. R. R. Tolkien',
            genero: 'Fantasia',
            paginas: '295 páginas',
          ),),
          SizedBox(height: 20),
          Cardlivro(
            autor: 'L. M. Montgomery',
            capa:
                'https://m.media-amazon.com/images/I/71HIiVIqw5L._SL1000_.jpg',
            paginas: '336 páginas',
            titulo: 'Anne de Green',
            genero: 'Romance',
          ),
          SizedBox(height: 20),
          Cardlivro(
            autor: 'Neil Gaiman',
            capa:
                'https://m.media-amazon.com/images/I/91DZobBc1BL._SL1500_.jpg',
            paginas: '224 páginas',
            titulo: 'Coraline',
            genero: 'Fantasia',
          ),
          SizedBox(height: 20),
          Cardlivro(
            autor: 'L. M. Montgomery',
            capa:
                'https://m.media-amazon.com/images/I/71HIiVIqw5L._SL1000_.jpg',
            paginas: '336 páginas',
            titulo: 'Anne de Green',
            genero: 'Romance',
          ),
          SizedBox(height: 20),
          Cardlivro(
            autor: 'L. M. Montgomery',
            capa:
                'https://m.media-amazon.com/images/I/71HIiVIqw5L._SL1000_.jpg',
            paginas: '336 páginas',
            titulo: 'Anne de Green',
            genero: 'Romance',
          ),
          SizedBox(height: 20),
          Cardlivro(
            autor: 'L. M. Montgomery',
            capa:
                'https://m.media-amazon.com/images/I/71HIiVIqw5L._SL1000_.jpg',
            paginas: '336 páginas',
            titulo: 'Anne de Green',
            genero: 'Romance',
          ),
         
        ],
      ),
      bottomNavigationBar: Barranav(),
    );
  }
}
