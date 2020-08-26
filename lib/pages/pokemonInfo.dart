import 'package:flutter/material.dart';

import 'package:pokedex_flutter/utils/capitalize.dart';
import 'package:pokedex_flutter/utils/mainColor.dart';

class PokemonInfo extends StatefulWidget {
  final int id;
  final String name;
  final List types;
  final int height;
  final int weight;

  PokemonInfo(
      {Key key, this.id, this.name, this.types, this.height, this.weight})
      : super(key: key);

  @override
  _PokemonInfoState createState() => _PokemonInfoState();
}

class _PokemonInfoState extends State<PokemonInfo> {
  Color mainColor;

  void changeMainColor() {
    Color newMainColor = verifyType(widget.types[0].name);
    setState(() {
      mainColor = newMainColor;
    });
  }

  @override
  void initState() {
    super.initState();
    changeMainColor();
  }

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    changeMainColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.2),
        title: Text(widget.name.toUpperCase()),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '#${widget.id.toString().padLeft(3, '0')}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Text(
                '${widget.name.capitalize()}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'Height: ${widget.height / 10}m',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                'Weight: ${widget.weight / 10}kg',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Image.network(
                'https://assets.pokemon.com/assets/cms2/img/pokedex/full/${widget.id.toString().padLeft(3, '0')}.png'),
            Row(
                children: widget.types
                    .map(
                      (type) => Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        width: 75,
                        height: 75,
                        child: Text(
                          type.name.toString().toUpperCase()[0],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: verifyType(type.name),
                            fontSize: 55.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                    .toList()),
          ],
        ),
      ),
    );
  }
}
