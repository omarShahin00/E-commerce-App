import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class AuthBloc extends Bloc<SignupEvent, SignupState> {
  AuthBloc() : super(SignupInitialState()) {
    on<SignupEvent>(
      (event, emit) {},
    );
  }
}
