import 'package:flutter/material.dart';

Color verifyType(type){
    Color newMainColor;
    switch (type){
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