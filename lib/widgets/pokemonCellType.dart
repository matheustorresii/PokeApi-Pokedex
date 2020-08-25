import 'package:flutter/material.dart';

class PokemonCellType extends StatefulWidget {
  final String type;

  PokemonCellType({Key key, this.type}) : super(key:key);

  @override
  _PokemonCellTypeState createState() => _PokemonCellTypeState();
}

class _PokemonCellTypeState extends State<PokemonCellType> {
  Color mainColor;
  
  Color verifyType(){
    Color newMainColor;
    switch (widget.type){
      case 'grass':
        newMainColor = Color.fromRGBO(120, 181, 72, 1.0);
        break;
      case 'poison':
        newMainColor = Color.fromRGBO(147, 71, 151, 1.0);
        break;
      case 'bug':
        newMainColor = Color.fromRGBO(167, 175, 49, 1.0);
        break;
      case 'dark':
        newMainColor = Color.fromRGBO(74, 58, 50, 1.0);
        break;
      case 'dragon':
        newMainColor = Color.fromRGBO(121, 105, 204, 1.0);
        break;
      case 'electric':
        newMainColor = Color.fromRGBO(225, 165, 45, 1.0);
        break;
      case 'fairy':
        newMainColor = Color.fromRGBO(210, 151, 210, 1.0);
        break;
      case 'fighting':
        newMainColor = Color.fromRGBO(125, 57, 53, 1.0);
        break;
      case 'fire':
        newMainColor = Color.fromRGBO(226, 68, 25, 1.0);
        break;
      case 'flying':
        newMainColor = Color.fromRGBO(157, 166, 235, 1.0);
        break;
      case 'ghost':
        newMainColor = Color.fromRGBO(74, 65, 136, 1.0);
        break;
      case 'ground':
        newMainColor = Color.fromRGBO(227, 196, 149, 1.0);
        break;
      case 'ice':
        newMainColor = Color.fromRGBO(113, 210, 246, 1.0);
        break;
      case 'normal':
        newMainColor = Color.fromRGBO(182, 173, 168, 1.0);
        break;
      case 'psychic':
        newMainColor = Color.fromRGBO(225, 76, 130, 1.0);
        break;
      case 'rock':
        newMainColor = Color.fromRGBO(180, 152, 89, 1.0);
        break;
      case 'steel':
        newMainColor = Color.fromRGBO(143, 139, 163, 1.0);
        break;
      case 'water':
        newMainColor = Color.fromRGBO(80, 142, 222, 1.0);
        break;
      default:
        newMainColor = Color.fromRGBO(0, 0, 0, 1.0);
        break;
    }

    return newMainColor;
  }

  void changeMainColor(){
    Color newMainColor = verifyType();
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
