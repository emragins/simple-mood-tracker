import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SimpleMoodTrackerFirebaseUser {
  SimpleMoodTrackerFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

SimpleMoodTrackerFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SimpleMoodTrackerFirebaseUser> simpleMoodTrackerFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<SimpleMoodTrackerFirebaseUser>(
            (user) => currentUser = SimpleMoodTrackerFirebaseUser(user));
