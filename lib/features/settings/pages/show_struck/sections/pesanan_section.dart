part of '../page.dart';

class _PesananSection extends StatelessWidget {
  const _PesananSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SubtitleText('Pesanan'),
            ],
          ),
          Divider(thickness: 2),
          Row(
            children: [
              SubtitleText('Organic Potato'),
            ],
          ),
          Dimens.dp8.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RegularText('Rp. 18.000'),
              RegularText('2x'),
            ],
          ),
          Dimens.dp16.height,
          Row(
            children: [
              SubtitleText('Organic Beans'),
            ],
          ),
          Dimens.dp8.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RegularText('Rp. 7.000'),
              RegularText('1x'),
            ],
          ),
          Divider(thickness: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SubtitleText('Subtotal'),
              SubtitleText('Rp. 25.000'),
            ],
          ),
        ],
      ),
    );
  }
}
