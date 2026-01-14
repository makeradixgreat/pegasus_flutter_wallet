import 'package:flutter/material.dart';

class TotalValueWidget extends StatelessWidget {
  const TotalValueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'TOTAL VALUE',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.black38),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'US\$',
                        style: TextStyle(
                          fontSize: 18.0, // Smaller font size
                          fontWeight:
                          FontWeight.w600, // Less strong font weight
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: '16 704,',
                        style: TextStyle(
                          fontSize: 26.0, // Bigger font size
                          fontWeight: FontWeight.bold, // Bold font weight
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: '17',
                        style: TextStyle(
                          fontSize: 18.0, // Same smaller font size as 'US$'
                          fontWeight:
                          FontWeight.w600, // Less strong font weight
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8.0),
                const Icon(
                  Icons.remove_red_eye,
                  color: Colors.grey,
                  size: 22.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}