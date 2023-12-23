// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PayingCard extends StatelessWidget {
  const PayingCard({
    Key? key,
    required this.money,
    required this.cardNumber,
    required this.date,
    required this.color,
  }) : super(key: key);
  final String money;
  final String cardNumber;
  final String date;
  final Color color;
  @override
  Widget build(BuildContext context) {
    Color whiteText = Colors.white;
    return Container(
      width: 320,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Balance',
                style: TextStyle(color: whiteText),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'lib/images/visa.jpg',
                  height: 50,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text('\$$money', style: TextStyle(fontSize: 28, color: whiteText)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '**** $cardNumber',
                style: TextStyle(fontSize: 20, color: whiteText),
              ),
              Text(
                cardNumber,
                style: TextStyle(fontSize: 20, color: whiteText),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
