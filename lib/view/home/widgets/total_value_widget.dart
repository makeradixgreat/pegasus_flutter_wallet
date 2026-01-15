import 'package:flutter/material.dart';
import 'package:pegasus_wallet/core/core.dart';

class TotalValueWidget extends StatelessWidget {
  const TotalValueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'TOTAL VALUE',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: context.baseSubtitleColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'US\$',
                        style: TextStyle(
                          fontSize: 18, // Smaller font size
                          fontWeight:
                              FontWeight.w600, // Less strong font weight
                          color: context.baseTitleColor,
                        ),
                      ),
                      TextSpan(
                        text: '16 704,',
                        style: TextStyle(
                          fontSize: 26, // Bigger font size
                          fontWeight: FontWeight.bold, // Bold font weight
                          color: context.baseTitleColor,
                        ),
                      ),
                      TextSpan(
                        text: '17',
                        style: TextStyle(
                          fontSize: 18, // Same smaller font size as 'US$'
                          fontWeight:
                              FontWeight.w600, // Less strong font weight
                          color: context.baseTitleColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                const Icon(
                  Icons.remove_red_eye,
                  color: Colors.grey,
                  size: 22,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
