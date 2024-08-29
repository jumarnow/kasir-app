part of '../page.dart';

class _ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return Row(
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
                    RegularText.semiBold(
                      state.user?.name == null || state.user!.name.isEmpty
                          ? 'Elbark Store'
                          : state.user!.name,
                    ),
                    Dimens.dp4.height,
                    RegularText(
                        state.user?.email == null || state.user!.email.isEmpty
                            ? 'umar@gmail.com'
                            : state.user!.email,
                        style: const TextStyle(fontSize: Dimens.dp12)),
                    Dimens.dp4.height,
                    RegularText(
                        state.user?.phoneNumber == null ||
                                state.user!.phoneNumber.isEmpty
                            ? '087667667667'
                            : state.user!.phoneNumber,
                        style: const TextStyle(fontSize: Dimens.dp12)),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(AppIcons.edit),
                color: context.theme.primaryColor,
              ),
            ],
          );
        },
      ),
    );
  }
}
