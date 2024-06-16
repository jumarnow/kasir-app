part of '../page.dart';

class _ItemSection extends StatelessWidget {
  const _ItemSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.defaultSize),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(Dimens.dp8),
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYw9VnAJ0kwdAIfioIwBSutjqwtbXz_3thmMq7cExoivh4JlTd',
                width: 74,
                height: 74,
                fit: BoxFit.cover,
                ),
              ),
              Dimens.dp12.width,
              Column(
                children: [
                  RegularText.semiBold('Semangka Organik'),
                ],
              )
            ],
          ),
          Dimens.dp16.height,
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Edit'),
                ),
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text('Delete'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}