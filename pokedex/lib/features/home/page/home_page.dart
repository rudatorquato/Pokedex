import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/colors.dart';  
import 'package:pokedex/features/home/widgets/options_features_widget.dart';
import 'package:pokedex/features/home/widgets/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
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
                      "Que Pokémon você está procurando?",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 35, right: 35),
                    child: SearchWidget(),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: OptionsFeaturesWidget(),
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
  }
}