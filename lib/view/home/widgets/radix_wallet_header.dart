import 'package:flutter/material.dart';

class RadixWalletHeader extends StatelessWidget {
  const RadixWalletHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Radix Wallet',
          style: TextStyle(
              fontSize: 32.0, fontWeight: FontWeight.w900, letterSpacing: 1.5),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.65,
            child: const Text(
              'Welcome. Here are all your Accounts on the Radix Network.',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.black38),
            ),
          ),
        ),
      ],
    );
  }
}