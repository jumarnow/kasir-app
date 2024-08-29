import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/features/settings/settings.dart';

import '../profile/page.dart';
part 'sections/profile_section.dart';
part 'sections/other_section.dart';
part 'sections/device_section.dart';
part 'sections/account_section.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lainnya')),
      body: ListView(
        children: [
          _ProfileSection(),
          Divider(
            thickness: Dimens.dp8,
            color: Colors.grey[100],
          ),
          _AccountSection(),
          Divider(
            thickness: Dimens.dp8,
            color: Colors.grey[100],
          ),
          _DeviceSection(),
          Divider(
            thickness: Dimens.dp8,
            color: Colors.grey[100],
          ),
          _OtherSection(),
          Padding(
            padding: const EdgeInsets.all(Dimens.dp16),
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: context.theme.colorScheme.error,
                side: BorderSide(
                  color: context.theme.colorScheme.error,
                ),
              ),
              child: const Text('Keluar'),
            ),
          ),
        ],
      ),
    );
  }
}
