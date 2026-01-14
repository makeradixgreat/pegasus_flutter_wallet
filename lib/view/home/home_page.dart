import 'package:flutter/material.dart';
import 'package:pegasus_wallet/view/home/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
            icon: const Icon(Icons.settings_outlined, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const RadixWalletHeader(),
              const TotalValueWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: AccountCardWidget(
                        accountName: index % 2 == 0
                            ? 'My Account'
                            : 'Diogo Account',
                        accountId:  index % 2 == 0
                            ? 'acco...asdj29y'
                            : 'acco...asd2yd',
                        amount: index % 2 == 0 ? '16 704,13' : '1253,12',
                        gradient:  index % 2 == 0
                            ? LinearGradient(
                                colors: [
                                  Colors.blue[800]!,
                                  Colors.blue,
                                  Colors.greenAccent,
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              )
                            : LinearGradient(
                                colors: [
                                  Colors.blue[800]!,
                                  Colors.purple,
                                  Colors.pinkAccent,
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                      ),
                    );
                  },
                ),
              ),
              const CreateAccountButton(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
