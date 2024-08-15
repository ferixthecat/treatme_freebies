import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:treatme_freebies/providers/redeem_provider.dart';

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
  void onTap() {
    Provider.of<RedeemProvider>(context, listen: false).addFreebie(
      {
        'id': widget.freebie['id'],
        'company': widget.freebie['company'],
        'type': widget.freebie['type'],
        'description': widget.freebie['description'],
        'link': widget.freebie['link'],
        'howto': widget.freebie['howto'],
        'valid': widget.freebie['valid'],
      },
    );
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Ready to redeem'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Column(
        children: [
          Text(
            widget.freebie['company'] as String,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
