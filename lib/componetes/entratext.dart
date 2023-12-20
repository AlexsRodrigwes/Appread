import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Email extends StatelessWidget {
  final String title;
  final bool senha;
  Email({required this.title, required this.senha});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 256,
      child: TextField(
        obscureText: senha,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          hintText: title,
          hintStyle: TextStyle(
            color: Color(0xFFA49CA1),
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontFamily: "Raleway",
          ),
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Color(0xFFA49CA1),
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Color(0xFFA49CA1),
              width: 2,
            ),
          ),  
          fillColor: Color(0xFF8F6F2),
          filled: true,
        ),
      ),
    );
  }
}
