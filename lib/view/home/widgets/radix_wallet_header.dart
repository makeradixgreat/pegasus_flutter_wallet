import 'package:flutter/material.dart';
import 'package:pegasus_wallet/core/core.dart';

class RadixWalletHeader extends StatelessWidget {
  const RadixWalletHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Radix Wallet',
          style: TextStyle(
            color: context.baseTitleColor,
            fontSize: 32,
            fontWeight: FontWeight.w900,
            letterSpacing: 1.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.65,
            child: Text(
              'Welcome. Here are all your Accounts on the Radix Network.',
              style: TextStyle(
                color: context.baseSubtitleColor,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
