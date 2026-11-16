import 'package:flutter/material.dart';
import 'package:tugaskelompok7/src/pokemon_model.dart';

class Pokemon extends StatelessWidget {
  const Pokemon({super.key});

  static const List<PokemonModel> listPokemon = [
    PokemonModel(name: 'Bulbasaur', imagePath: 'images/bullbasaur.png'),
    PokemonModel(name: 'Charmander', imagePath: 'images/charmander.png'),
    PokemonModel(name: 'Eevee', imagePath: 'images/eevee.png'),
    PokemonModel(name: 'Pidgey', imagePath: 'images/pidgey.png'),
    PokemonModel(name: 'Pikachu', imagePath: 'images/pikachu.png'),
    PokemonModel(name: 'Pokeball', imagePath: 'images/pokeball.png'),
    PokemonModel(name: 'Rattata', imagePath: 'images/rattata.png'),
    PokemonModel(name: 'Snorlax', imagePath: 'images/snorlax.png'),
    PokemonModel(name: 'Squirtle', imagePath: 'images/squirtle.png'),
    PokemonModel(name: 'Zubat', imagePath: 'images/zubat.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Pokemon App')),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: listPokemon.length,
        itemBuilder: (context, index) {
          final pokemon = listPokemon[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              leading: Image.asset(
                pokemon.imagePath,
                width: 64,
                height: 64,
                fit: BoxFit.contain,
                semanticLabel: pokemon.name,
              ),
              title: Text(
                pokemon.name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          );
        },
      ),
    );
  }
}
