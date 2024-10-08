part of 'struck_bloc.dart';

class StruckState extends Equatable {
  const StruckState({
    this.error,
    this.status = Status.initial,
    this.struck,
  });

  factory StruckState.initial() {
    return const StruckState();
  }

  final StruckModel? struck;
  final Status status;
  final String? error;

  StruckState copyWith({
    StruckModel? struck,
    Status? status,
    String? error,
  }) {
    return StruckState(
      error: error,
      status: status ?? this.status,
      struck: struck ?? this.struck,
    );
  }

  @override
  List<Object?> get props => [error, status, struck];
}

final class StruckInitial extends StruckState {}
