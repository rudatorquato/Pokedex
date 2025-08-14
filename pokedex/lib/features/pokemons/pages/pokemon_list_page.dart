// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import 'package:pokedex/core/theme/colors.dart';
import 'package:pokedex/features/home/page/home_page.dart';
import 'package:pokedex/features/pokemons/pages/gen_pokemon_list_page.dart';
import 'package:pokedex/features/pokemons/store/pokemon.store.dart';
import 'package:pokedex/features/pokemons/widget/pokemon_button_widget.dart';
import 'package:pokedex/utils/utils.dart';

class PokemonListPage extends StatefulWidget {
  String numberGeneration;
  PokemonListPage({
    Key? key,
    required this.numberGeneration,
  }) : super(key: key);

  @override
  State<PokemonListPage> createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  final pokemonStore = GetIt.I.get<PokemonStore>();

  Future<void> _loadPokemonData() async {
    await pokemonStore.getPokemonsGenerations(widget.numberGeneration);

  }

  @override
  void initState() {
    super.initState();
    _loadPokemonData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: primarycolor,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.07,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 45,
              ),
              iconSize: 45,
              onPressed: () => back(context, GenPokemonListPage(), 'Dados de volta para a tela anterior'),
            ),
          ),
          Positioned(
            top: -215,
            left: MediaQuery.of(context).size.width * 0.150,
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
                height: 140, // altura da parte branca
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
                          "Pokemons",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      PokemonButtonWidget()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}