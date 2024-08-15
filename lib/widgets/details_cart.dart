import 'package:flutter/material.dart';

class DetailsCart extends StatelessWidget {
  final String company;
  final String freebie;
  final String signup;
  final String notes;
  const DetailsCart({
    super.key,
    required this.company,
    required this.freebie,
    required this.signup,
    required this.notes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(216, 240, 253, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(company, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 5),
          Text(freebie, style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 5),
          Text(signup, style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 5),
          Text(notes, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
