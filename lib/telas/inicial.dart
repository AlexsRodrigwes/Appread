import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:appread/componetes/buttons.dart';
import 'package:appread/componetes/entratext.dart';
import 'package:appread/componetes/capa.dart';
import 'package:appread/componetes/lista3.dart';
import 'package:appread/componetes/barranav.dart';
import 'package:appread/componetes/customScaffold.dart';

class Inicial extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffF8F6F2),
        toolbarHeight: 130,
        flexibleSpace: Container(
          //
          padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/img/menu.png',
                    // width: double.infinity,
                    height: 30,
                    alignment: Alignment.bottomLeft,
                  )),),
              
              const Text(
                //
                'Minhas Leituras', //
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF333236),
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  fontFamily: "YesevaOne",
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          color: const Color(0xffF8F6F2),
          child: Expanded(
            child: Container(
              child: Column(
                children: [
                  InkWell( onTap: () {Navigator.pushNamed(context, '/lendo');},
                  child: Lista3(capa: 'https://m.media-amazon.com/images/I/71HIiVIqw5L._SL1000_.jpg', capa2: 'https://m.media-amazon.com/images/I/71qrodjC39L._SL1000_.jpg',capa3: 'https://m.media-amazon.com/images/I/61nfRHGUkHL._SL1000_.jpg', titulo: 'Lendo'),),
                  Lista3(capa: 'https://m.media-amazon.com/images/I/71HIiVIqw5L._SL1000_.jpg', capa2: 'https://m.media-amazon.com/images/I/71qrodjC39L._SL1000_.jpg',capa3: 'https://m.media-amazon.com/images/I/61nfRHGUkHL._SL1000_.jpg', titulo: 'Próxima Leitura'),
                ],
              ),
            ),
          ),
        ),
      ),
        bottomNavigationBar: Barranav(), 
    );
  }
}
