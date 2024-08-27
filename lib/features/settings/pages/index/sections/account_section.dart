
part of '../page.dart';

class _AccountSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(Dimens.dp16),
          child: RegularText.semiBold('Akun'),
        ),
        ItemMenuSettings(
          title: 'Informasi Usaha',
          icon: AppIcons.receipt,
          onTap: () {},
        ),
        const ItemMenuSettings(
          title: 'API Key Xendit',
          icon: AppIcons.creditCard,
        ),
      ],
    );
  }
}