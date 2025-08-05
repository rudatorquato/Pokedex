import 'package:flutter/material.dart';

class GenPokemonWidget extends StatefulWidget {
  const GenPokemonWidget({super.key});

  @override
  State<GenPokemonWidget> createState() => _GenPokemonWidgetState();
}

class _GenPokemonWidgetState extends State<GenPokemonWidget> {
  Widget _buildButton(String text) {
    return ElevatedButton(
      onPressed: () {
        // ação ao pressionar o botão
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, // torna o botão retangular
        ),
        fixedSize: Size(150, 100), // tamanho fixo
      ),
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20.0),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: index < 4 ? 20 : 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButton('Clique aqui'),
                SizedBox(width: 50), // espaçamento entre os botões
                index == 4 ? Container(width: 150) : _buildButton('Clique aqui'),
              ],
            ),
          );
        },
      ),
    );
  }
}