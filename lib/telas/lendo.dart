import 'package:flutter/material.dart';
import 'package:appread/componetes/cardlivro3.dart';
import 'package:appread/componetes/buscar.dart';

class Lendo extends StatelessWidget {
  const Lendo({Key? key}) : super(key: key);

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
                        'Lendo',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
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
          Cardlivro3(
            capa:
                'https://m.media-amazon.com/images/I/91M9xPIf10L._SL1500_.jpg',
            titulo: 'O Hobbit',
            autor: 'J. R. R. Tolkien',
            pagina: 100,
            totalPaginas: 200,
         
            
          ),
          SizedBox(height: 20),
          Cardlivro3(
            capa:
                'https://m.media-amazon.com/images/I/91M9xPIf10L._SL1500_.jpg',
            titulo: 'O Hobbit',
            autor: 'J. R. R. Tolkien',
            pagina: 100,
            totalPaginas: 200,
     
            
          ),
        ],
      ),
    );
  }
}
