import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/core/theme/colors.dart';
import 'package:pokedex/features/pokemons/store/pokemon.store.dart';
import 'package:pokedex/utils/utils.dart';

class PokemonButtonWidget extends StatelessWidget {
  PokemonButtonWidget({super.key});
  final pokemonStore = GetIt.I.get<PokemonStore>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Observer(
        builder: (_) {
          if (pokemonStore.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (pokemonStore.errorMessage.isNotEmpty) {
            return Center(child: Text(pokemonStore.errorMessage));
          } else {
            return ListView.builder(
              itemCount: pokemonStore.pokemonsGen?.length ?? 0,
              itemBuilder: (context, index) {
                String pokemonName =
                    pokemonStore.pokemonsGen?[index].name ?? '';
                String pokemonUrl = pokemonStore.pokemonsGen?[index].url ?? '';
                String pokemonId = getIdUrlPokemon(pokemonUrl);
                return ListTile(
                  title: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withValues(alpha: 0.2),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Material(
                        color: primarycolor,
                        child: InkWell(
                          onTap: () {
                            print("APEWRTEI");
                          },
                          child: Stack(
                            children: [
                              Positioned(
                                right: -75,
                                top: -20,
                                bottom: -20,
                                child: Image.asset(
                                  'assets/images/pkeball.png',
                                  color: translucentWhite,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 12.0,
                                ),
                                child: Row(
                                  children: [
                                    pokemonId != 0
                                        ? Image.asset(
                                            "assets/images/official-artwork/$pokemonId.png",
                                            width: 80,
                                            height: 80,
                                          )
                                        : CircularProgressIndicator(),
                                    SizedBox(width: 10),
                                    Text(
                                      updateNamePokemon(pokemonName),
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
