
import 'package:exercicegrilles/datasource.dart';
import 'package:exercicegrilles/place.dart';
import 'package:flutter/material.dart';

class GridPage extends StatefulWidget {
  @override
  State<GridPage> createState() => GridState();
}


class GridState extends State<GridPage> {

  @override
  Widget build( BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    
    return GridView.builder(
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) {
        final Place place = DataSource().allPlaces()[index];
        return InkWell(
      child: Card(
          child: Container(
            padding: EdgeInsets.all(5),
            child:Column(
              children: [
                Expanded(
                    child:Image.asset(
                        place.getFolderPath(),
                        width: width/2,
                        height: height/2,
                        fit: BoxFit.cover),
                ),
                Text(place.name)
              ],
            )
          )
        ),
      );
        },
    itemCount: DataSource().allPlaces().length,
    );
    
    }
  
}