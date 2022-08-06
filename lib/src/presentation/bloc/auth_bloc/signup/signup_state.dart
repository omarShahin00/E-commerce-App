part of 'signup_bloc.dart';

abstract class SignupState extends Equatable {
  const SignupState();

  @override
  List<Object> get props => [];
}

class SignupInitialState extends SignupState {}

class SignupSuccessfullState extends SignupState {
  //* Must create User first
}

class SignupLoadingState extends SignupState {
  const SignupLoadingState();
}

class SignupErrorState extends SignupState {
  final String msg;

  const SignupErrorState({required this.msg});

  @override
  List<Object> get props => [msg];
}
