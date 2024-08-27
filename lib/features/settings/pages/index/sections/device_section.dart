

part of '../page.dart';


class _DeviceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(Dimens.dp16),
          child: RegularText.semiBold('Perangkat Tambahan'),
        ),
        ItemMenuSettings(
          title: 'Printer',
          icon: Icons.print_outlined,
          onTap: () {},
          subtitle: 'Belum terhubung',
        ),
        ItemMenuSettings(
          title: 'Atur Struk',
          icon: AppIcons.coupon,
          onTap: () {},
        ),
      ],
    );
  }
}