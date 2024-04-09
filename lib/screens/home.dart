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
    Location(
        title: 'Lyon, France',
        dateRange: '5-9 juillet',
        pricePerNight: '270€',
        rating: 4.95,
        imageUrl: 'assets/images/home_location_2.jpg'
    ),
    Location(
        title: 'Cherbourg, France',
        dateRange: '3-8 septembre',
        pricePerNight: '50€',
        rating: 4.95,
        imageUrl: 'assets/images/home_location_3.jpg'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //appBar: CustomAppBar(),
      body: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return LocationTile(location: locations[index]);
          }
      ),
    );
  }
}