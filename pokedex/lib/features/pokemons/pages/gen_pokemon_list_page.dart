import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/colors.dart';
import 'package:pokedex/features/pokemons/widget/gen_pokemon_widget.dart';

class GenPokemonListPage extends StatefulWidget {
  const GenPokemonListPage({super.key});

  @override
  State<GenPokemonListPage> createState() => _GenPokemonListPageState();
}

class _GenPokemonListPageState extends State<GenPokemonListPage> {
  @override
  Widget build(BuildContext context) {
    // 
    return Scaffold(
  body: Stack(
    children: [
      Container(
        decoration: BoxDecoration(
          color: primarycolor,
        ),
      ),
      Positioned(
        top: -215,
        left: MediaQuery.of(context).size.width*0.150,
        child: Image.asset(
          'assets/images/pkeball.png',
          width: 600,
          height: 600,
          color: colorPokeball,
        ),
      ),
      Column(
        children: [
          Container(
            height: 250, // altura da parte branca
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 35, right: 35),
                    child: Text(
                      "Gerações",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                 
                  Expanded(
                    child: GenPokemonWidget()
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  ),
);
    //
  }
}