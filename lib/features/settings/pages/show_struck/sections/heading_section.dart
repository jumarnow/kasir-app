part of '../page.dart';
class _HeadingSection extends StatelessWidget {
  const _HeadingSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SubtitleText('KasirSupar', textAlign: TextAlign.center),
          Dimens.dp14.height,
          const RegularText(
            'Instagram : @kasirsuper',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
