import 'package:flutter/material.dart';

class Buscar extends StatelessWidget {
  const Buscar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFA49CA1))),
          hintStyle: TextStyle(
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
            color: Color(0xFFA49CA1),
          ),
          hintText: 'Buscar',
         
          suffixIcon: InkWell( child:Image.asset('assets/img/busca.png', 
              width: 30, height: 30, alignment: Alignment.centerRight,
              ),
              onTap: () {
                Navigator.pushNamed(context, '/pesquisa');
              },
        ),
      ),
      
      ),
      width: 282,
    );
    
  }
}
