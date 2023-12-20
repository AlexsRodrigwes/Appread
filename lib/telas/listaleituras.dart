import 'package:appread/componetes/barranav.dart';
import 'package:flutter/material.dart';
import 'package:appread/componetes/lista3.dart';
import 'package:appread/componetes/buttons.dart';
import 'package:appread/componetes/buscar.dart';
import 'package:appread/componetes/customScaffold.dart';
import 'package:appread/componetes/customScaffold.dart';

class Listasleitura extends StatelessWidget {
  const Listasleitura({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
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
              Text(
                'Listas de leitura', 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF333236),
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  fontFamily: "YesevaOne",
                ),
              ),
              SizedBox(height: 20),
              Buscar()
            ],
          ),) ,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
      
        child: SizedBox(
          child: Container(
            child: Column(
              children: [
                Lista3(
                    capa:
                        'https://m.media-amazon.com/images/I/71HIiVIqw5L._SL1000_.jpg',
                    capa2:
                        'https://m.media-amazon.com/images/I/71qrodjC39L._SL1000_.jpg',
                    capa3:
                        'https://m.media-amazon.com/images/I/61nfRHGUkHL._SL1000_.jpg',
                    titulo: 'Clássicos'),
                Lista3(
                    capa:
                        'https://m.media-amazon.com/images/I/71HIiVIqw5L._SL1000_.jpg',
                    capa2:
                        'https://m.media-amazon.com/images/I/71qrodjC39L._SL1000_.jpg',
                    capa3:
                        'https://m.media-amazon.com/images/I/61nfRHGUkHL._SL1000_.jpg',
                    titulo: 'Ficção'),
                SizedBox(
                  height: 20,
                ),
                Buttonadd(
                  onPressed: () => Navigator.pushNamed(context, '/pesquisa'),
                  borda: 12,
                  fonte: 16,
                  title: 'Criar nova lista',
                  altura: 40,
                  largura: 230,
                ),
              ],
            ),
          ),
        ),
    ), 
    bottomNavigationBar: Barranav(
      
    ),

    );
  }
}
