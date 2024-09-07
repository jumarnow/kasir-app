part of '../page.dart';

class _TransaksiSection extends StatelessWidget {
  const _TransaksiSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              SubtitleText('Detail Transaksi'),
            ],
          ),
          const Divider(thickness: 2),
          Dimens.dp8.height,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RegularText('Jumlah Pesanan'),
              SubtitleText('3'),
            ],
          ),
          Dimens.dp8.height,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RegularText('Subtotal'),
              SubtitleText('Rp.49.000'),
            ],
          ),
          Dimens.dp8.height,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RegularText('Pajak'),
              SubtitleText('Rp. 0'),
            ],
          ),
          Dimens.dp8.height,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RegularText('Diskon'),
              SubtitleText(
                '- Rp. 4.200',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
          const Divider(thickness: 2),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SubtitleText('Total Tagihan'),
              SubtitleText('Rp. 44.000'),
            ],
          ),
          Dimens.dp8.height,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SubtitleText('Total Pembayaran'),
              SubtitleText('Rp. 50.000'),
            ],
          ),
          const Divider(thickness: 2),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SubtitleText(
                'Total Kembali',
                style: TextStyle(color: Colors.red),
              ),
              SubtitleText(
                'Rp. 5.200',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
          Dimens.dp24.height,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const RegularText('Terimakasih telah berkunjung'),
              Dimens.dp8.height,
              const RegularText('Power by KasirSuper'),
            ],
          ),
        ],
      ),
    );
  }
}
