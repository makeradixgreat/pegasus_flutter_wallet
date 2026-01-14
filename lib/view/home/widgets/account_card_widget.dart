import 'package:flutter/material.dart';

class AccountCardWidget extends StatelessWidget {
  final String accountName;
  final String accountId;
  final String amount;
  final Gradient gradient;
  const AccountCardWidget({
    super.key,
    required this.gradient,
    required this.accountName,
    required this.accountId,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        gradient: gradient,
      ),
      child: Card(
        elevation: 2.0,
        shadowColor: Colors.transparent,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    accountName,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'US\$$amount',
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    accountId,
                    style: const TextStyle(color: Colors.white60),
                  ),
                  const SizedBox(width: 6.0),
                  const Icon(Icons.copy, size: 14.0, color: Colors.white54),
                ],
              ),
              const SizedBox(height: 20.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/xrd.webp',
                  width: 28.0,
                  height: 28.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
