import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'dart:convert';

import 'package:pokedex_flutter/classes/pokemonData.dart';
import 'package:pokedex_flutter/widgets/pokemonCell.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<List<PokemonData>> futurePokemonList;

  Future<List<PokemonData>> getPokemons() async {
    var client = Client();
    List<String> pokemonsIds = [];
    for(var i = 1; i <= 151; i++){
      pokemonsIds.add('$i');
    }

    return Future.wait<PokemonData>(pokemonsIds.map((pokemon) => 
      client.get('https://pokeapi.co/api/v2/pokemon/$pokemon').then((value) => PokemonData.fromJson(json.decode(value.body)))));
  }

  @override
  void initState(){
    super.initState();
    futurePokemonList = getPokemons();
  }

  @override
  void didUpdateWidget(oldWidget){
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokédex'),
        backgroundColor: Color.fromRGBO(221, 67, 66, 1.0),
      ),
      body: Container(
        child: FutureBuilder(
          future: futurePokemonList,
          builder: (context, snapshot){
            if(!snapshot.hasData){
              return CircularProgressIndicator();
            }
            List<PokemonData> pokemons = snapshot.data;
            return ListView(
              children: pokemons.map((poke) => 
                PokemonCell(
                  id: poke.id,
                  name: poke.name,
                  types: poke.types,
                  height: poke.height,
                  weight: poke.weight,
                ),
              ).toList()
            );
          },
        ),
      ),
    );
  }
}