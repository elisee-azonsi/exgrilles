import 'package:exercicegrilles/datasource.dart';
import 'package:exercicegrilles/place.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  State<ListPage> createState() => ListState();
}


class ListState extends State<ListPage> {

@override
Widget build( BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        final Place place = DataSource().allPlaces()[index];
        return ListTile(
            title: Text(place.name),
            leading: Text((index + 1).toString()),
            trailing:Image.asset(place.getFolderPath(),
              width: width/3,
            fit: BoxFit.cover,),
            onTap: () {
            },
            );
      }, separatorBuilder: (BuildContext context, int index) {
        return const Divider(color: Colors.lightBlueAccent, thickness: 1,);
  },
    itemCount: DataSource().allPlaces().length,
  );
}

}

