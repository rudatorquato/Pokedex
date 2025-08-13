import 'package:flutter/material.dart';
import 'package:pokedex/features/pokemons/pages/pokemon_list_page.dart';
import 'package:pokedex/utils/utils.dart';

class GenPokemonWidget extends StatefulWidget {
  const GenPokemonWidget({super.key});

  @override
  State<GenPokemonWidget> createState() => _GenPokemonWidgetState();
}

class _GenPokemonWidgetState extends State<GenPokemonWidget> {
  Widget _buildButton(String text) {
    return ElevatedButton(
      onPressed: () {
       to(context, PokemonListPage( numberGeneration: text.toString(),));
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        fixedSize: Size(150, 100), 
      ),

      child: Column(
        children: [
          Image.asset(
              'assets/images/gen/gen$text.png',
              height: 75,
              
            ),
            Text(
              'Geração $text',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )
        ],
      ),
        
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20.0),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          int x;
          x=index+1;
          return Padding(
            padding: EdgeInsets.only(bottom: index < 4 ? 20 : 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                _buildButton((index+1).toString()),
                SizedBox(width: 50), // espaçamento entre os botões
                index == 4 ? Container(width: 150) : _buildButton((index < x ? 6+index : index ).toString()),
              ],
            ),
          );
        },
      ),
    );
  }
}