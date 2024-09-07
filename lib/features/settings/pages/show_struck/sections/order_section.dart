part of '../page.dart';

class _OrderSection extends StatelessWidget {
  const _OrderSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RegularText('Tipe Pembayaran'),
                SubtitleText('Tunai'),
              ]),
          Dimens.dp8.height,
          const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RegularText('Order ID'),
                SubtitleText('TRX-1234567890'),
              ]),
        ],
      ),
    );
  }
}
