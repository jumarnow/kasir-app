part of '../page.dart';

class _FilterSection extends StatefulWidget {
  const _FilterSection();

  @override
  State<_FilterSection> createState() => _FilterSectionState();
}

class _FilterSectionState extends State<_FilterSection> {
  String selected = 'Done';
  @override
  Widget build(BuildContext context) {
    return 
            SingleChildScrollView(
              padding: const EdgeInsets.all(Dimens.defaultSize),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildContainer(context, label: 'Done'),
                  Dimens.dp12.width,
                  _buildContainer(context, label: 'Draft'),
                ],
              ),
            );
  }

  Widget _buildContainer(BuildContext context, {
    required String label,
  }) {
    final isActive = selected == label;
    return InkWell(
      onTap: () {
        setState(() {
          selected = label;
        });
      },
      borderRadius: BorderRadius.circular(Dimens.dp8),
      child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimens.defaultSize,
                    vertical: Dimens.dp8,
                  ),
                  decoration: BoxDecoration(
                    color: isActive ? context.theme.primaryColor : null,
                    borderRadius: BorderRadius.circular(Dimens.dp8),
                    border: Border.all(
                      color: isActive ? context.theme.primaryColor : AppColors.white[500]!,
                    ),
      
                  ),
                  child: RegularText.semiBold(
                    label,
                   style: TextStyle(
                    fontSize: Dimens.dp12,
                    color: isActive ? AppColors.white : AppColors.black[200],
                    ),
                  ),
                ),
    );
  }
}