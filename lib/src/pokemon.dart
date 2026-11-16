import 'package:flutter/material.dart';

class Pokemon extends StatelessWidget {
  Pokemon({super.key});

  final List<String> listPokemon = [
    "Bullbasaur",
    "Charmander",
    'Eevee',
    'Pidgey',
    'Pikachu',
    'Pokeball',
    'Rattata',
    'Snorlax',
    'Squirtle',
    'Zubat',
  ];

  @override
  Widget build(BuildContext context) {

    // print("_print pokemon ${listPokemon[1]}");
    listPokemon.forEach((element) {
      if(element == "Pikachu") {
       print("_print pika pika");
      } else {
       print("_print $element");
      }
    },);

    return Scaffold(
      appBar: AppBar(
        title: Text("My Pokemon App"),
      ),
      body:Container(
        color: Colors.white
      )
    );
  }
}