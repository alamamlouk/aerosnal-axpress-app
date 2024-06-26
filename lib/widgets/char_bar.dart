import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChartBar extends StatelessWidget {
  const ChartBar(
      {super.key,
      required this.label,
      required this.spendingAmount,
      required this.spendingPctOfTotal});
  final String label;
  final double spendingAmount;
  final double spendingPctOfTotal;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx,constraints){
        return Column(
          children: <Widget>[
            Container(
                height: 20,
                child: FittedBox(
                    child: Text('\$${spendingAmount.toStringAsFixed(0)}'))),
            SizedBox(
              height: 4,
            ),
            Container(
              height: 60,
              width: 10,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        color: Color.fromARGB(220, 220, 220, 1),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  FractionallySizedBox(
                      heightFactor: spendingPctOfTotal,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(10)),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(label)
          ],
        );
      },

    );
  }
}
