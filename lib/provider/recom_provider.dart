import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:papa_kost/model/re_model.dart';


class RecomProv extends ChangeNotifier {
  getRecomSpace() async {
    var result = await http.get(
      Uri.parse('https://bwa-cozy.herokuapp.com/recommended-spaces'),
    );

    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Recom> spaces = data.map((item) => Recom.fromJson(item)).toList();
      return spaces;
    } else {
      return <Recom>[];
    }
  }
}
