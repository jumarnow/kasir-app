part of '../page.dart';

class _ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(Dimens.dp50),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYw9VnAJ0kwdAIfioIwBSutjqwtbXz_3thmMq7cExoivh4JlTd',
              width: 64,
              height: 64,
              fit: BoxFit.cover,
            ),
          ),
          Dimens.dp16.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RegularText.semiBold('Kasir SUPER'),
                Dimens.dp4.height,
                const RegularText('superpos@gmail.com',
                    style: TextStyle(fontSize: Dimens.dp12)),
                Dimens.dp4.height,
                const RegularText('087665443221',
                    style: TextStyle(fontSize: Dimens.dp12)),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(AppIcons.edit),
            color: context.theme.primaryColor,
          ),
        ],
      ),
    );
  }
}
