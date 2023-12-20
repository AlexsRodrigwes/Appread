import 'package:flutter/material.dart';
import 'package:appread/componetes/detalhesLivro.dart';
import 'package:appread/telas/bemvindo.dart';
import 'package:appread/telas/perfil.dart';
import 'package:appread/telas/pesquisa.dart';
import 'package:appread/telas/inicial.dart';
import 'package:appread/telas/listaleituras.dart';
import 'package:appread/telas/meuslivros.dart';
import 'package:appread/telas/pesquisa.dart';
import 'package:appread/telas/entrar.dart';
import 'package:appread/telas/resumoano.dart';
import 'package:appread/telas/lendo.dart';
import 'package:appread/telas/bemvindo.dart';
import 'package:appread/componetes/rotas.dart';

class Barranav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          color: Color.fromARGB(255, 27, 26, 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () { Navigator.pushNamedAndRemoveUntil(context, '/', (route) => route.isFirst);},
                    icon: Image.asset(
                      'assets/img/bookmark.png',
                      width: 26,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  IconButton(
                    onPressed: () {Navigator.pushNamedAndRemoveUntil(context, '/listaleituras', (route) => route.isFirst);},
                    icon: Image.asset(
                      'assets/img/Vector.png',
                      width: 26,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {Navigator.pushNamedAndRemoveUntil(context, '/meuslivros', (route) => route.isFirst);},
                      
                    icon: Image.asset(
                      'assets/img/library.png',
                      width: 26,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  IconButton(
                    onPressed: () {Navigator.pushNamedAndRemoveUntil(context, '/perfil', (route) => route.isFirst);},
                    icon: Image.asset(
                      'assets/img/profile.png',
                      width: 26,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 0,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 22,
          child: Transform.rotate(
            angle: 0.80,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x33000000),
                    // spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 0), // Shadow position
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFFFFFF),
              ),
              height: 55,
              width: 55,
              child: Transform.rotate(
                angle: 0.80,
                child: GestureDetector(
                  onTap: () {
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
                          child: DetalhesLivro(),
                        );
                      },
                    );
                  },
                  child: Image.asset(
                    'assets/img/plus.png',
                    width: 26,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
