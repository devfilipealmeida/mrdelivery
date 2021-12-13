import 'package:flutter/material.dart';
import 'header.dart';
import 'categories.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.teal, centerTitle: true),
          bottomAppBarColor: Colors.teal,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.orange),
          ),
      home: const Hamburguer(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Hamburguer extends StatefulWidget {
  const Hamburguer({Key? key}) : super(key: key);

  @override
  _HamburguerState createState() => _HamburguerState();
}

class _HamburguerState extends State<Hamburguer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: const Text("Mr. Delivery"),
            leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
            ],
          ),
          Header(),
          Categories(),
          SliverList(
              delegate: SliverChildListDelegate([
            const Text(
              "Aqui Ficam seus produtos, imagens e etc... Obrigado! De nada! heuheuheuheu",
              style: TextStyle(fontSize: 50),
            )
          ]))
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.home),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(45),),
        child: Container(
          color: Colors.black38,
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Row(
              children: [
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.add_alert),
                  color: Colors.white,
                  onPressed: () {},
                ),
                const Spacer(),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.turned_in),
                  color: Colors.white,
                  onPressed: () {},
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
