
part of '../page.dart';

class _OtherSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(Dimens.dp16),
          child: RegularText.semiBold('Info Lainnya'),
        ),
        ItemMenuSettings(
          title: 'Kebijakan Privasi',
          icon: AppIcons.verified,
          onTap: () {},
        ),
        ItemMenuSettings(
          title: 'Beri Bintang',
          icon: AppIcons.star,
          onTap: () {},
          subtitle: 'v 1.0.0',
        ),
      ],
    );
  }
}
