import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

part 'sections/heading_section.dart';
part 'sections/order_section.dart';
part 'sections/pesanan_section.dart';
part 'sections/transaksi_section.dart';

class ShowStruckPage extends StatelessWidget {
  const ShowStruckPage({super.key});

  static const routeName = '/settings/struck/show';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tampilan Struck')),
      body: ListView(
        children: const [
          _HeadingSection(),
          Divider(thickness: 8),
          _OrderSection(),
          Divider(thickness: 8),
          _PesananSection(),
          Divider(thickness: 8),
          _TransaksiSection(),
        ],
      ),
    );
  }
}
