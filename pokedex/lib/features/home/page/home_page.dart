import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/colors.dart';
import 'package:pokedex/core/widget/my_button.widget.dart';

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
        color: background,
      ),
      height: MediaQuery.of(context).size.height,
    ),
    Column(
      children: [
        Expanded(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25), 
          bottomRight: Radius.circular(25)
        )
      ),
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.150, bottom: 75),
            child: Text("Que Pokémon você está procurando?"),
          ),
          Padding(
            padding: EdgeInsets.only( left: 35, right: 35),
            child: SearchAnchor(
            builder: (BuildContext context, SearchController controller){ 
              return SearchBar(
                controller: controller,
                padding: WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                  onTap: () {
                    controller.openView();
                  },
                  onChanged: (_) {
                    controller.openView();
                  },
                  leading: const Icon(Icons.search),
              );
            }, 
            suggestionsBuilder: (BuildContext context, SearchController controller) {
                return List<ListTile>.generate(5, (int index) {
                  final String item = 'item $index';
                  return ListTile(
                    title: Text(item),
                    onTap: () {
                      setState(() {
                        controller.closeView(item);
                      });
                    },
                  );
                });
              },
              ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 90.0),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 3,
                mainAxisSpacing: 16, // espaçamento entre linhas
                crossAxisSpacing: 16,
                padding: EdgeInsets.only(top: 10, left: 35, right: 35),
                children: [
                  MyButtonWidget(
                    onTap: () {},
                    text: 'Pokedex',
                    textColor: Colors.black,
                    backgroundColor: Colors.green,
                  ),
                  MyButtonWidget(
                    onTap: () {},
                    text: 'Movimentos',
                    textColor: Colors.black,
                  ),
                  MyButtonWidget(
                    onTap: () {},
                    text: 'Habilidades',
                    textColor: Colors.black,
                  ),
                  MyButtonWidget(
                    onTap: () {},
                    text: 'Frutas',
                    textColor: Colors.black,
                  ),
                  MyButtonWidget(
                    onTap: () {},
                    text: 'Localização',
                    textColor: Colors.black,
                  ),
                  MyButtonWidget(
                    onTap: () {},
                    text: 'Tipos',
                    textColor: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
  ),
),

        Container(
          height: 300,
        )
      ],
    ),
  ],
)
    );
  }
}