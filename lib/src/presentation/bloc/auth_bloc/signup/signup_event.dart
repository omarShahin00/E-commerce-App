part of 'signup_bloc.dart';

abstract class SignupEvent extends Equatable {
  const SignupEvent();

  @override
  List<Object> get props => [];
}

class SignupWithEmailAndPassword extends SignupEvent {
  final String email, password, name;

  const SignupWithEmailAndPassword(
      {required this.email, required this.password, required this.name});

  @override
  List<Object> get props => [email, password, name];
}

// class Logout extends SignupEvent {
//   final dynamic userID;

//   const Logout({this.userID});
// }
