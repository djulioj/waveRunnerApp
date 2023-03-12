import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class WaveRunnerFirebaseUser {
  WaveRunnerFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

WaveRunnerFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<WaveRunnerFirebaseUser> waveRunnerFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<WaveRunnerFirebaseUser>(
      (user) {
        currentUser = WaveRunnerFirebaseUser(user);
        return currentUser!;
      },
    );
