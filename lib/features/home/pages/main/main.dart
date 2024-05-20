import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

part 'sections/card_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Dimens.defaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const _CardSection(
              title: 'Total Penjualan',
              value: 'Rp. 5.000.000',
              ),
            Dimens.defaultSize.height,
            const _CardSection(
              title: 'Total Transaksi',
              value: 'Rp. 300.000',
              ),
            Dimens.defaultSize.height,
            const _CardSection(
              title: 'Total Produk',
              value: '653',
              ),
          ],
        ),
      ),
    );
  }
}
