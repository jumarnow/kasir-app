import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

part './sections/filter_section.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transaksi')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const _FilterSection(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(Dimens.defaultSize),
              children: const [
                _buildContainer(),
              ]
            ),
          ),
        ],
      ),
    );
  }
}

class _buildContainer extends StatelessWidget {
  const _buildContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimens.dp8),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.black.withOpacity(0.2),
        ),
        borderRadius: BorderRadius.circular(Dimens.dp12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: Dimens.dp14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  padding: const EdgeInsets.all(Dimens.dp8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: context.theme.primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(Dimens.dp8),
                  ),
                  child: RegularText.semiBold(
                    'Done',
                    style: TextStyle(
                      color: context.theme.primaryColor,
                      fontSize: Dimens.dp10,
                    ),
                    ),
                ),
                RegularText.semiBold(
                  '24 Januari 2024 . 11.30',
                  style: const TextStyle(
                    color: AppColors.black,
                    fontSize: Dimens.dp10,
                  ),
                )
              ],
            ),
          ),
          // padding
          Padding(
            padding: const EdgeInsets.only(bottom: Dimens.dp14),
            child: RegularText.semiBold(
              'Tunai . TRX-100.2020410100001',
              style: const TextStyle(
                color: AppColors.black,
                fontSize: Dimens.dp16,
              ),
            ),
          ),
          // padding
          RegularText.semiBold(
            'Rp. 125.000.000',
            style: TextStyle(
              color: context.theme.primaryColor,
              fontSize: Dimens.dp16,
            ),
          ),
        ],
      ),
    );
  }
}