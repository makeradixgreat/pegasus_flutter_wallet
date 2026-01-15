import 'package:flutter/material.dart';

class AccountCardWidget extends StatelessWidget {
  const AccountCardWidget({
    required this.gradient,
    required this.accountName,
    required this.accountId,
    required this.amount,
    super.key,
  });
  final String accountName;
  final String accountId;
  final String amount;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        gradient: gradient,
      ),
      child: Card(
        elevation: 2,
        shadowColor: Colors.transparent,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    accountName,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'US\$$amount',
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
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
                  const SizedBox(width: 6),
                  const Icon(Icons.copy, size: 14, color: Colors.white54),
                ],
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset('assets/xrd.webp', width: 28, height: 28),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
