import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MasterEMasterPieceFirebaseUser {
  MasterEMasterPieceFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

MasterEMasterPieceFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MasterEMasterPieceFirebaseUser> masterEMasterPieceFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MasterEMasterPieceFirebaseUser>(
      (user) {
        currentUser = MasterEMasterPieceFirebaseUser(user);
        return currentUser!;
      },
    );
