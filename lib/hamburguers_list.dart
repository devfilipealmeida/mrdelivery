import 'package:flutter/material.dart';

class HamburguersList extends StatefulWidget {
  const HamburguersList({Key? key}) : super(key: key);

  @override
  _HamburguersListState createState() => _HamburguersListState();
}

class _HamburguersListState extends State<HamburguersList> {
  @override
  Widget build(BuildContext context) {
    int items = 10;
    Widget baconImage = Container(
      height: 110,
      child: Image.asset("assets/images/hamburguer.png"),
    );

     Widget hotdogImage = Container(
      height: 110,
      child: Image.asset("assets/images/hotdog.png"),
    );

    return SliverToBoxAdapter(
      child: Container(
        height: 240,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
            itemCount: items,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              bool reverse = index.isEven;
              return Stack(
                children: [
                  Container(
                    height: 240,
                    width: 200,
                    margin: EdgeInsets.only(
                      left: 20,
                      right: index == items ? 20 : 0,
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: Card(
                        color: Theme.of(context).primaryColor,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(children: [
                            const Text(
                              "Burguer",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  "R\$15,95",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                        ),
                        elevation: 3,
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: reverse ? 70 : 65,
                    left: 30,
                    child: GestureDetector(
                      onTap: () {},
                      child: reverse ? hotdogImage : baconImage,
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
