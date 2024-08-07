import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final Map<String, Object> freebie;
  const DetailsPage({
    super.key,
    required this.freebie,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
