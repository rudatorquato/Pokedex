import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/di/service_locator.dart';
import 'package:pokedex/features/home/page/home_page.dart';
import 'package:pokedex/features/pokemons/pages/pokemon_list_page.dart';
import 'package:pokedex/features/pokemons/store/pokemon.store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
Future<void> main() async {
  setupServiceLocator();

  //final pokemonStore = GetIt.I.get<PokemonStore>();
  //await pokemonStore.getPokemonsGenerations("1");
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  //final pokemonStore = GetIt.I.get<PokemonStore>();
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()//PokemonListPage(numberGeneration: '1',)
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key,});
  

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final pokemonStore = GetIt.I.get<PokemonStore>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
//       ),
//       body: Observer(
//         builder: (_) {
//           if (pokemonStore.isLoading) {
//             return Center(child: CircularProgressIndicator());
//           } else if (pokemonStore.errorMessage.isNotEmpty) {
//             return Center(child: Text(pokemonStore.errorMessage));
//           } else {
//             return ListView.builder(
//               itemCount: pokemonStore.pokemonsGen?.length ?? 0,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(pokemonStore.pokemonsGen?[index].name ?? ''),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }