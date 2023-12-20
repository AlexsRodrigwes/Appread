import 'package:flutter/material.dart';

class Bemvindo extends StatelessWidget {
  const Bemvindo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF333236),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 350),
            child: Center(
                child: TextButton(
              child: Text(
                "Leitura",
                style: TextStyle(
                  color: Color(0xFFEECC8A),
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/entrar');
              },
            )),
          )
          // Container(
          //   margin: const EdgeInsets.only(top: 350),
          //   child: Center(
          //   child: const Text(
          //     'Leitura',
          //     style: TextStyle(
          //       color: Color(0xFFEECC8A),
          //       fontSize: 60,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
          // ),
        ],
      ),
    );
  }
}
