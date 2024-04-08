import 'package:flutter/material.dart';
import '../models/location.dart';
import 'favorite_button.dart';

class LocationTile extends StatelessWidget {
  final Location location;

  LocationTile({super.key,  required this.location });

  @override
  Widget build(BuildContext context){
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(location.imageUrl),
          ListTile(
            title: Text(location.title),
            subtitle: Text('${location.dateRange} - ${location.pricePerNight}'),
            trailing: Row(
                mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star, color: Colors.amber),
                Text('${location.rating}'),
                FavoriteButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}