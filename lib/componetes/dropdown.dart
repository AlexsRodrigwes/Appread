import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  final String status;
  final String opcao1;
  final String opcao2;
  final String opcao3;
  Dropdown(
      {Key? key,
      required this.status,
      required this.opcao1,
      required this.opcao2,
      required this.opcao3})
      : super(key: key);

  @override
  State<Dropdown> createState() => _Dropdown();
}

class _Dropdown extends State<Dropdown> {
  @override
  Widget build(BuildContext context) {
    late String? dropdownValue;
    dropdownValue = widget.status;
    return Container(
      height: 30,
      width: 100,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFFFA49CA1),
      ),
      child: DropdownButton<String>(
        icon: Image.asset('assets/img/mais.png'),
        isExpanded: true,
        iconSize: 20,
        value: dropdownValue,
        elevation: 16,
        underline: Container(),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        dropdownColor: Color(0xFFFFA49CA1),
        items: <String>[widget.status, widget.opcao1, widget.opcao2, widget.opcao3]
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 15,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ));
        }).toList(),
        itemHeight: 50,
      ),
    );
  }
}
