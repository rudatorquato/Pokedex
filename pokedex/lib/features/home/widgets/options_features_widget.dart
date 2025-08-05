import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/colors.dart';
import 'package:pokedex/core/widget/my_button.widget.dart';
import 'package:pokedex/features/pokemons/pages/gen_pokemon_list_page.dart';
import 'package:pokedex/utils/utils.dart';

class OptionsFeaturesWidget extends StatefulWidget {
  const OptionsFeaturesWidget({super.key});

  @override
  State<OptionsFeaturesWidget> createState() => _OptionsFeaturesWidgetState();
}

class _OptionsFeaturesWidgetState extends State<OptionsFeaturesWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 3,
      mainAxisSpacing: 16, // espaçamento entre linhas
      crossAxisSpacing: 16,
      padding: EdgeInsets.only(top: 10, left: 35, right: 35),
      children: [
        MyButtonWidget(
          onTap: () {
            to(context, GenPokemonListPage());
          },
          text: 'Pokedex',
          textColor: Colors.white,
          backgroundColor: colorButtomPokemon,
        ),
        MyButtonWidget(
          onTap: () {},
          text: 'Movimentos',
          textColor: Colors.white,
          backgroundColor: colorButtomMoves,
        ),
        MyButtonWidget(
          onTap: () {},
          text: 'Habilidades',
          textColor: Colors.white,
          backgroundColor: colorButtomAbilities,
        ),
        MyButtonWidget(
          onTap: () {},
          text: 'Frutas',
          textColor: Colors.white,
          backgroundColor: colorButtomBerry,
        ),
        MyButtonWidget(
          onTap: () {},
          text: 'Localização',
          textColor: Colors.white,
          backgroundColor: colorButtomLocate,
        ),
        MyButtonWidget(
          onTap: () {
            print("asd");
          },
          text: 'Tipos',
          textColor: Colors.white,
          backgroundColor: colorButtomType,
        ),
      ],
    );
  }
}