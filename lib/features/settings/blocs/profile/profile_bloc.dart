import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kasirsuper/core/data/enums/status_enum.dart';
import 'package:kasirsuper/features/settings/settings.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial()) {
    on<GetProfileEvent>((event, emit) async {
      try {
        emit(state.copyWith(status: Status.loading));

        final service = await ProfileService.getProfile();

        emit(state.copyWith(status: Status.apply, user: service));
      } catch (e) {
        emit(state.copyWith(status: Status.failure, error: e.toString()));
      }
    });
    on<SubmitProfileEvent>((event, emit) async {
      try {
        emit(state.copyWith(status: Status.loading));

        final service = await ProfileService.insertProfile(UserModel(
          name: event.name,
          email: event.email,
          phoneNumber: event.phoneNumber,
          image: state.image ?? '',
        ));

        emit(state.copyWith(status: Status.success, user: service));
      } catch (e) {
        emit(state.copyWith(status: Status.failure, error: e.toString()));
      }
    });
    // on<GetImageProfileEvent>((event, emit) async {
    //   try {
    //     final picker = await ImageHelper.getImage();

    //     emit(state.copyWith(image: picker));
    //   } catch (e) {
    //     emit(state.copyWith(status: Status.failure, error: e.toString()));
    //   }
    // });
  }
}