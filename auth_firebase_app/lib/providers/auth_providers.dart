import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});
final authStateProvider = Provider<User?>((ref) {
  return ref.watch(firebaseAuthProvider).currentUser;
});
