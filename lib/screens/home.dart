import 'package:flutter/material.dart';
import '../models/location.dart';
import '../widgets/location_tile.dart';
import '../widgets/app_bar.dart';

class HomeScreen extends StatelessWidget {

  final List<Location> locations = [
    Location(
      title: 'Paris, France',
      dateRange: '3-8 septembre',
      pricePerNight: '140€',
      rating: 4.83,
      imageUrl: 'assets/images/home_location.jpg'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return LocationTile(location: locations[index]);
          }
      ),
    );
  }
}