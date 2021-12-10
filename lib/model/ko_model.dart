import 'package:flutter/material.dart';

class Kota {
  int id;
  String name;
  String imageUrl;
  bool isPopuler;

  Kota({
    this.id,
    this.name,
    this.imageUrl,
    this.isPopuler = false,
  });
}
