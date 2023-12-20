import 'package:flutter/material.dart';
import 'package:appread/componetes/buttons.dart';

class Popap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 320,
      color: Color(0xffF8F6F2),
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Adicionar à nova lista',
              style: TextStyle(fontFamily: "YesevaOne", fontSize: 20),
              
            ),
            Container(
padding: EdgeInsets.only(left: 10, right: 10),
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color:
                          Color(0xffEECB89), // Especifique a cor da borda aqui
                      width: 2.0,
                      // Especifique a largura da borda aqui
                    ),
                  ),
                  child: const TextField( 
                    style: TextStyle(
                      color: Color(0xFF333236),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Raleway",
                    ),
                    decoration: InputDecoration(
                      hintText: 'Nome da lista',
                      hintStyle: TextStyle(
                        color: Color(0xFF333236),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Raleway",
                      ),
                    ),
                  ),
            ),
            Buttonadd(
              borda: 12,
              altura: 40,
              largura: 150,
              title: 'Adicionar',
              fonte: 20,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

}