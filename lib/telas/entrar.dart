import 'package:flutter/material.dart';
import 'package:appread/componetes/buttons.dart';

class Entrar extends StatelessWidget {
  const Entrar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( 
        children: [
          SizedBox(height: 70),
          Container(
                padding: EdgeInsets.symmetric(horizontal:80, vertical: 30), // alinhar o texto
                child:
               Align( alignment: Alignment.bottomCenter, child: Text(
                'Leitura',
                style: TextStyle(
                  color: Color(0xFFA49CA1),
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  fontFamily: "YesevaOne",
                ),
              ),
              ),
              ),
          const SizedBox(height: 20),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Padding(padding: EdgeInsets.symmetric(horizontal:20),
              child: const Text(
                '“Um leitor vive mil vidas antes \n de morrer. O homem que \n nunca lê vive apenas uma.”', textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF333236),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontFamily: "YesevaOne",
                ),
              ),
              ),
              const SizedBox(height: 5),
             const Text(
                '-George R. R. Martin', 
                style: TextStyle(
                  color: Color(0xFF333236),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Raleway",
                ),
              ),
              ],
              ),
              SizedBox(height: 40),
              Image.asset( 'assets/img/logo 1.png',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.symmetric(horizontal:80),
                child: Column(
                  children: [
                    Buttonadd(title: 'Criar conta',
                      altura: 56,
                      largura: 256,
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                    ),
                    SizedBox(height: 5),
                    Row 
                    (mainAxisAlignment: MainAxisAlignment.center,
                      children:
                     [
                    Text('Já tem uma conta?' 
                    , style: TextStyle(
                      color: Color(0xFFA49CA1),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Raleway",
                    ),
                    ),
                    Text(' Entrar', 
                    style: TextStyle(
                      color: Color(0xFF333236),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Raleway",
                    ) ,),
                    ] ),
                    
                  ],
                ),
              ),
              ],
      ),
    );
  }
}
