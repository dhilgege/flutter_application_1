import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:meta/meta.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthStateLogout()) {
    FirebaseAuth auth = FirebaseAuth.instance;
    on<AuthEventlogin>((event, emit) async {
      try {
        emit(AuthStateLoading());
        await auth.signInWithEmailAndPassword(
          email: event.email,
          password: event.pass,
        );
        emit(AuthStateLogin());
      } on FirebaseAuthException catch (e) {
        emit(AuthStatError(e.message.toString()
        )
        );
      } catch (e) {
        emit(AuthStatError(e.toString()
        )
        );
      }
    });
    on<AuthEventlogout>((event, emit) async {
      try {
        emit(AuthStateLoading());
        await auth.signOut();
        emit(AuthStateLogout());
      } on FirebaseAuthException catch (e) {
        emit(AuthStatError(e.message.toString()
        )
        );
      } catch (e) {
        emit(AuthStatError(e.toString()
        )
        );
      }
    });
  }
}
