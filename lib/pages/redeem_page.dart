import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:treatme_freebies/providers/redeem_provider.dart';

class RedeemPage extends StatelessWidget {
  const RedeemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final redeems = context.watch<RedeemProvider>().redeemed;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gifts to Redeem'),
      ),
      body: ListView.builder(
        itemCount: redeems.length,
        itemBuilder: (context, index) {
          final redeemGift = redeems[index];

          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(redeemGift['imageUrl'] as String),
              radius: 30,
            ),
            trailing: IconButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        'Remove Gift',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      content: const Text(
                        'Confirm to remove redeemable gift',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'No',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            context
                                .read<RedeemProvider>()
                                .removeFreebie(redeemGift);
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'Yes',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
            title: Text(
              redeemGift['description'].toString(),
              style: Theme.of(context).textTheme.bodySmall,
            ),
            subtitle: Text(redeemGift['company']),
          );
        },
      ),
    );
  }
}
