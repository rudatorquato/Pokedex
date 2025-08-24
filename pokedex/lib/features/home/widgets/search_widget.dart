import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/core/theme/colors.dart';
import 'package:pokedex/features/pokemons/store/pokemon.store.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final pokemonStore = GetIt.I.get<PokemonStore>();

  @override
  void initState() {
    super.initState();
    pokemonStore.getPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      builder: (BuildContext context, SearchController controller) {
        return SearchBar(
          elevation: WidgetStatePropertyAll<double>(0.0),
          backgroundColor: WidgetStateProperty.all(colorPokeball),
          controller: controller,
          hintText: "Pesquise o Pokemon",
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 16.0),
          ),
          onTap: () {
            controller.openView();
          },
          onChanged: (text) {
            pokemonStore.filterPokemons(text);
          },
          leading: const Icon(Icons.search),
        );
      },
      suggestionsBuilder: (BuildContext context, SearchController controller) {
        pokemonStore.filterPokemons(controller.text);
        return [
          Observer(
            builder: (_) {
              final pokemons = pokemonStore.currentPokemons;
              if (pokemonStore.isLoading) {
                return Center(child: CircularProgressIndicator());
              } else if (pokemonStore.errorMessage.isNotEmpty) {
                return Center(child: Text(pokemonStore.errorMessage));
              } else if (pokemons?.isEmpty ?? true) {
                return Center(child: Text('Nenhum pokémon encontrado'));
              } else {
                return SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemCount: pokemons?.length ?? 0,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(pokemons?[index].name ?? ''),
                        onTap: () {
                          controller.closeView(
                            pokemons?[index].name,
                          );
                        },
                      );
                    },
                  ),
                );
              }
            },
          ),
        ];
      },
    );
  }
}