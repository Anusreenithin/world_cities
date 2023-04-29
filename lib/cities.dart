import 'package:flutter/material.dart';
import 'package:world_cities/city_modlclss.dart';

class City extends StatefulWidget {
  const City({Key? key}) : super(key: key);

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  List items = [
    ModelCity(
        item: "Delhi",
        subitem: "India",
       population: "19mill",
        image: "images/del.png"),
    ModelCity(
        item: "london",
        subitem: "Britain",
        population: "8mill",
        image: "images/Llndn.png"),
    ModelCity(
        item: "Vancouver",
        subitem: "Canada",
        population: "2.4mill",
        image: "images/van.png"),
    ModelCity(
        item: "Newyork",
        subitem: "USA",
        population: "8.1mill",
        image: "images/newyok.png")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            "Cities Around The World",
            style: TextStyle(
              backgroundColor: Colors.orange,
            ),
          ),
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(

                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(items[index].image),
                              fit: BoxFit.cover,

                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text( items[index].item),
                         ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(items[index].subitem),
                        ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('population:'+items[index].population),
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
