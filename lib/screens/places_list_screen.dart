import 'package:GoingPlaces/providers/great_places.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './add_place_screen.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Places'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
            },
          ),
        ],
      ),
      body: Consumer<GreatPlaces>(
        child: Center(child: Text('No pace added Please Add'),),
        builder: (ctx,greatplaces,ch)=> greatplaces.items.length <=0?ch:
        ListView.builder(
          itemCount: greatplaces.items.length,
          itemBuilder: (ctx,i )=>ListTile(
            leading: CircleAvatar(
              backgroundImage: FileImage(greatplaces.items[i].image),
            ),
            title: Text(greatplaces.items[i].title ),
            onTap:() {
          
            },
          ),    
      ),
          ));
  
 
  }
}
