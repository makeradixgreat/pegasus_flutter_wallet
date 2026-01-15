import 'package:flutter/material.dart';
import 'package:pegasus_wallet/core/core.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 230,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Create a New Account',
            style: TextStyle(
              color: context.baseTitleColor,
              fontWeight: FontWeight.w600,
              fontSize: 16.5,
            ),
          ),
        ),
      ),
    );
  }
}
