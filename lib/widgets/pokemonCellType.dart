import 'package:flutter/material.dart';

import 'package:pokedex_flutter/utils/mainColor.dart';

class PokemonCellType extends StatefulWidget {
  final String type;

  PokemonCellType({Key key, this.type}) : super(key:key);

  @override
  _PokemonCellTypeState createState() => _PokemonCellTypeState();
}

class _PokemonCellTypeState extends State<PokemonCellType> {
  Color mainColor;

  void changeMainColor(){
    Color newMainColor = verifyType(widget.type);
    setState(() {
      mainColor = newMainColor;
    });
  }

  @override
  void initState(){
    super.initState();
    changeMainColor();
  }

  @override
  void didUpdateWidget(oldWidget){
    super.didUpdateWidget(oldWidget);
    changeMainColor();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.5),
      child: Container(
        height: 35,
        width: 73,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: mainColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            widget.type.toUpperCase(),
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
      ),
    );
  }
}
