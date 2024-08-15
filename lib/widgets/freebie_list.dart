import 'package:flutter/material.dart';
import 'package:treatme_freebies/temp_db.dart';
import 'package:treatme_freebies/widgets/details_cart.dart';
import 'package:treatme_freebies/pages/details_page.dart';

class FreebieList extends StatefulWidget {
  const FreebieList({super.key});

  @override
  State<FreebieList> createState() => _FreebieListState();
}

class _FreebieListState extends State<FreebieList> {
  final List<String> filters = const ['Cosmetics', 'Food & Drink', 'Clothing'];
  late String selectedFilter;

  @override
  void initState() {
    super.initState();
    selectedFilter = filters[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
