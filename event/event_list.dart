import 'package:flutter/material.dart';
import '../model/smodel.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {

  final List<Transaction> transaction;
  TransactionList(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transaction.map((tx) {
        return Card(
          elevation: 5,
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    tx.subject,
                    style: TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    tx.teacher,
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w100),
                    ),
                     
                ],
              )
            ],
          ),
        );
      }).toList(),
    ) ;
  }
}
