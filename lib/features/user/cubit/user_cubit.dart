import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:trueme/features/user/data/models/fetch_user_exception.dart';
import 'package:trueme/features/user/data/models/trueme_user.dart';
import 'package:trueme/features/user/data/user_repository.dart';

sealed class UserState {}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserSuccess extends UserState {
  UserSuccess({this.user});

  final TruemeUser? user;
}

class UserDeleted extends UserState {}

class UserError extends UserState {
  UserError(this.message);

  final String message;
}

class UserNotExistingState extends UserState {}

@injectable
class UserCubit extends Cubit<UserState> {
  UserCubit(this._userRepository) : super(UserInitial());

  final UserRepository _userRepository;

  Future<void> fetchUserData() async {
    emit(UserLoading());
    final result = await _userRepository.fetchUser();
    await result.fold(
      (user) {
        emit(UserSuccess(user: user));
      },
      (error) async {
        if (error is UserNotExistingException) {
          final putResult = await _userRepository.putUser();
          putResult.fold(
            (_) => emit(UserNotExistingState()),
            (putError) => emit(
              UserError('Failed to create user: ${putError.runtimeType}'),
            ),
          );
        } else {
          emit(UserError('Failed to fetch user: ${error.runtimeType}'));
        }
      },
    );
  }

  Future<void> deleteUser() async {
    emit(UserLoading());
    final result = await _userRepository.deleteUser();
    await result.fold(
      (user) {
        emit(UserDeleted());
      },
      (error) async {
        if (error is UserNotExistingException) {
          final putResult = await _userRepository.putUser();
          putResult.fold(
            (_) => emit(UserNotExistingState()),
            (putError) => emit(
              UserError('Failed to create user: ${putError.runtimeType}'),
            ),
          );
        } else {
          emit(UserError('Failed to fetch user: ${error.runtimeType}'));
        }
      },
    );
  }
}
