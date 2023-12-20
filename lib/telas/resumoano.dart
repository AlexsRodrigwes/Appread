import 'package:flutter/material.dart';
import 'package:appread/componetes/cardlivro2.dart';
import 'package:appread/componetes/buscar.dart';

class Resumoano extends StatelessWidget {
  const Resumoano({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffF8F6F2),
        toolbarHeight: 180,
        flexibleSpace: Align(
          alignment: Alignment.center,
          child: Container(
            padding: EdgeInsets.only(left: 35, right: 35),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: 40,),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/img/voltar.png',
                          width: 32,
                          height: 20,
                        )),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 35, right: 15),
                    child: const Column( crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                      const Text(
                        '2022',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'YesevaOne',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      const Text(
                        '4 livros lidos',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ]),
                  ),
                  Buscar()
                ]),
          ),
        ),
      ),
      body: ListView(
        // esta faltando a quebra de linha dos titulos
        padding: EdgeInsets.only(left: 35, right: 35, top: 20),
        children: [
          Cardlivro2(
            capa:
                'https://m.media-amazon.com/images/I/91M9xPIf10L._SL1500_.jpg',
            titulo: 'O Hobbit',
            autor: 'J. R. R. Tolkien',
            status: 100,
            classificacao: 10,
            
          ),
          SizedBox(height: 20),
          Cardlivro2(
            capa:
                'https://m.media-amazon.com/images/I/91M9xPIf10L._SL1500_.jpg',
            titulo: 'O Hobbit',
            autor: 'J. R. R. Tolkien',
            status: 100,
            classificacao: 2,
            
          ),
        ],
      ),
    );
  }
}
