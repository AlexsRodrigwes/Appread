import 'package:flutter/material.dart';
import 'package:appread/componetes/cardlivro.dart';
import 'package:appread/componetes/buscar.dart';
import 'package:appread/componetes/barranav.dart';

class Meuslivros extends StatelessWidget {
  const Meuslivros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffF8F6F2),
        toolbarHeight: 130,
         flexibleSpace: Container(
          padding: EdgeInsets.only(
            top: 64.6,
          ),
          child:Expanded(
            child:
            Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal:40),
                child:
               Align( alignment: Alignment.bottomCenter, child: Text(
                'Meus livros', // 
                style: TextStyle(
                  color: Color(0xFF333236),
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  fontFamily: "YesevaOne",
                ),
              ),),),
              SizedBox(height: 20),
              Buscar()
            ],
          ),) ,
        ),
      ),
      body: ListView( // esta faltando a quebra de linha dos titulos
        padding: EdgeInsets.only(left: 35, right: 35, top: 40),
        children: [
          Cardlivro(
            capa:
                'https://m.media-amazon.com/images/I/91M9xPIf10L._SL1500_.jpg',
            titulo: 'O Hobbit',
            autor: 'J. R. R. Tolkien',
            genero: 'Fantasia',
            paginas: '295 páginas',
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
      bottomNavigationBar: Barranav(
      
    ),
    );
  }
}
