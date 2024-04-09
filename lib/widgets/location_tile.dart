import 'package:flutter/material.dart';
import '../models/location.dart';
import 'favorite_button.dart';
import 'members_favorite.dart';


class LocationTile extends StatelessWidget {
  final Location location;

  LocationTile({super.key,  required this.location });

  @override
  Widget build(BuildContext context){
    return Card(
      child: Stack(
        children: <Widget>[
          AspectRatio(
          aspectRatio: 16 / 9,
            child: Image.asset(
              location.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0, 
            left: 0, 
            right: 0, 
            child: Container(
              color: Colors.black.withOpacity(0.4),
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${location.title}', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  Text('${location.dateRange}', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  Text('${location.pricePerNight}', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                ],
              ),
            )
          ),
          Positioned(left: 8, top: 8, child: MembersFavorite()),
          Positioned(
              top: 8,
              right: 8,
              child: FavoriteButton()
          ),
        ]
      )
    );
  }
}