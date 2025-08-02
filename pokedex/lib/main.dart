import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/di/service_locator.dart';
import 'package:pokedex/features/pokemons/repository/pokemon_repository.dart';
import 'package:pokedex/features/pokemons/store/pokemon.store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
Future<void> main() async {
  setupServiceLocator();

  final pokemonStore = GetIt.I.get<PokemonStore>();
  await pokemonStore.getPokemons();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final pokemonStore = GetIt.I.get<PokemonStore>();
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final pokemonStore = GetIt.I.get<PokemonStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Observer(
        builder: (_) {
          if (pokemonStore.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (pokemonStore.errorMessage.isNotEmpty) {
            return Center(child: Text(pokemonStore.errorMessage));
          } else {
            return ListView.builder(
              itemCount: pokemonStore.pokemons?.length ?? 0,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(pokemonStore.pokemons?[index].name ?? ''),
                );
              },
            );
          }
        },
      ),
    );
  }
}