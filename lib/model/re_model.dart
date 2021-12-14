import 'package:flutter/material.dart';

class Recom {
  int id;
  String name;
  String city;
  String country;
  int price;
  String image_url;
  int rating;
  String address;
  String phone;
  String map_url;
  List photos;
  int number_of_kitchens;
  int number_of_bedrooms;
  int number_of_cupboards;

  Recom({
    this.id,
    this.name,
    this.city,
    this.country,
    this.price,
    this.image_url,
    this.rating,
    this.address,
    this.phone,
    this.map_url,
    this.photos,
    this.number_of_kitchens,
    this.number_of_bedrooms,
    this.number_of_cupboards,
  });

  Recom.fromJson(json) {
    id = json['id'];
    name = json['name'];
    city = json['city'];
    country = json['country'];
    price = json['price'];
    image_url = json['image_url'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    map_url = json['map_url'];
    photos = json['photos'];
    number_of_kitchens = json['number_of_kitchens'];
    number_of_bedrooms = json['number_of_bedrooms'];
    number_of_cupboards = json['number_of_cupboards'];
  }
}
