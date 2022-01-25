import 'package:flutter/material.dart';

class Bib extends StatefulWidget{
  const Bib({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Bib>{
  @override Widget build(BuildContext context){
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.only(top: 10, bottom: 16),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Que exercicio deseja procurar?',
              hintStyle: TextStyle(
                  color: Colors.black,
              ),
              suffixIcon: Icon(
                  Icons.search,
                  color: Colors.redAccent,
              ),
              contentPadding:
                const EdgeInsets.only(left: 20.0, bottom: 5.0, top: 12.5),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.redAccent),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.redAccent),
              )
            ),
          ),
        ),
      ),
    );
  }
}