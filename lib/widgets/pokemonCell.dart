import 'package:flutter/material.dart';

import 'package:pokedex_flutter/utils/capitalize.dart';

import 'package:pokedex_flutter/widgets/pokemonCellType.dart';

class PokemonCell extends StatefulWidget {
  final int id;
  final String name;
  final List types;

  PokemonCell({Key key, this.id, this.name, this.types}) : super(key: key);

  @override
  _PokemonCellState createState() => _PokemonCellState();
}

class _PokemonCellState extends State<PokemonCell> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.network("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${widget.id}.png"),
              Text(
                widget.name.capitalize(),
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Row(
            children: widget.types.map((type) => 
              PokemonCellType(type: type,)
            ).toList()
          ),
        ],
      ),
    );
  }
}
