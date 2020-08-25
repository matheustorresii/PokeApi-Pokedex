import 'package:flutter/material.dart';

import 'package:pokedex_flutter/widgets/pokemonCell.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokédex'),
        backgroundColor: Color.fromRGBO(221, 67, 66, 1.0),
      ),
      body: Container(
        child: ListView(
          children: [
            PokemonCell(
              id: 4,
              name: 'charmander',
              types: ['fire'],
              weight: 85,
              height: 6,
            ),
          ],
        ),
      ),
    );
  }
}