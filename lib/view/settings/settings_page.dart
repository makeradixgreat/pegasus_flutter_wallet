import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final listItems = [
      const _ListTileItem(
        title: 'Authorized dApps',
        icon: Icons.developer_board,
      ),
      const _ListTileItem(
        title: 'Personas',
        icon: Icons.account_circle_outlined,
      ),
      const _ListTileItem(
        title: 'Account Security & Settings',
        icon: Icons.security_outlined,
      ),
      const _ListTileItem(
        title: 'App Settings',
        icon: Icons.app_settings_alt_outlined,
      ),
    ];
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: listItems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: listItems[index],
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text(
                'Demo Version: 1.0.0',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ListTileItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const _ListTileItem({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
          ),
          leading: Icon(icon, size: 28.0),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, size: 20.0),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(color: Colors.black12),
        ),
      ],
    );
  }
}
