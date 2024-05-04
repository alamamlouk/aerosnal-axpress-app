import 'package:aersonal_axpenses_app/model/transaction.dart';
import 'package:aersonal_axpenses_app/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;

  const TransactionList(
      {super.key, required this.transactions, required this.deleteTx});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: transactions.isEmpty
          ? LayoutBuilder(
            builder: (ctx,constraints){
              return Column(
                children: <Widget>[
                  const Text("no  transactions added yet "),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.6,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              );
            },

          )
          :ListView(
        children: transactions.map((tx) => TransactionItem(key:ValueKey(tx.id),transaction: tx, deleteTx: deleteTx)).toList(),
      )
    );
  }
}
