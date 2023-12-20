import 'package:flutter/material.dart';
import 'package:appread/componetes/barranav.dart';

class Perfil extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF333236),
        toolbarHeight: 100,
        flexibleSpace: Stack(children: [
          Container(
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
                      )),
                ),
              ],
            ),
          ),
        ]),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 20, width: double.infinity),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(
                  color: Color(0xFFEECC8A), // Cor da borda
                  width: 3.0, // Espessura da borda
                ),
                shape: BoxShape.rectangle, // Forma da borda
              ),
              child: Image.asset(
                'assets/img/corvo.png',
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(height: 2),
            Text(
              //nome do usuario
              'Joanna',
              style: TextStyle(
                color: Color(0xFF333236),
                fontSize: 25,
                fontWeight: FontWeight.w700,
                fontFamily: "YesevaOne",
              ),
            ),
            SizedBox(height: 50),
            InkWell( //container 1
              onTap: () {
                Navigator.pushNamed(context, '/resumoano');
              },
            child: Container(
              width: 299,
              height: 128,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      
                      width: 299,
                      height: 128,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF8F6F2),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 2, color: Color(0xFFEECB89)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                      color: Color.fromARGB(255, 31, 31, 31),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      height: 50,
                      width: 299,
                      child: const Text(
                        '2023',
                        style: TextStyle(
                          color: Color(0xFFEECB89),
                          fontSize: 30,
                          fontFamily: 'YesevaOne',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 90,
                    top: 64,
                    child: SizedBox(
                      width: 175,
                      height: 47,
                      child: Text(
                        '3 livros lidos\n1.013 páginas lidas',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),),
            SizedBox(height: 20),
           Container( //container 2
              width: 299,
              height: 128,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 299,
                      height: 128,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF8F6F2),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 2, color: Color(0xFFEECB89)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                      color: Color.fromARGB(255, 31, 31, 31),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      height: 50,
                      width: 299,
                      child: const Text(
                        '2022',
                        style: TextStyle(
                          color: Color(0xFFEECB89),
                          fontSize: 30,
                          fontFamily: 'YesevaOne',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 90,
                    top: 64,
                    child: SizedBox(
                      width: 175,
                      height: 47,
                      child: Text(
                        '4 livros lidos\n1.683 páginas lidas',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Barranav(
      
    ),
    );
  }
}
