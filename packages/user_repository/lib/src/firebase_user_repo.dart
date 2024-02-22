import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';
import 'package:user_repository/user_repository.dart';

class FirebaseUserRepository implements UserRepository {
  final FirebaseAuth _firebaseAuth;
  final usersCollection = FirebaseFirestore.instance.collection('users');

  FirebaseUserRepository({FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  @override
  Future<void> logOut() async {
    // Panggil fungsi signOut dari Firebase Auth
    await _firebaseAuth.signOut();
  }

  @override
  Future<void> setUserData(MyUser myUser) async {
    try {
      // Tulis dokumen user ke Firestore, gunakan UID sebagai ID doc
      await usersCollection.doc(myUser.uid).set(myUser.toEntity().toDocument());
    } catch (e) {
      // Jika gagal, tampilkan error
      log(e.toString());
      rethrow;
    }
  }

  @override
  // Method ini mengembalikan stream user yang berasal dari auth state changes Firebase
  Stream<MyUser?> get user {
    // Stream auth state changes dari Firebase Auth
    return _firebaseAuth
        .authStateChanges()
        // Ubah stream menjadi stream user dengan memanfaatkan auth state
        .flatMap((userFromFirebase) async* {
      // Jika user kosong (logout), kembalikan user empty
      if (userFromFirebase == null) {
        yield MyUser.empty;
      }
      // Jika ada data user dari Firebase Auth, ambil data lengkap dari Firestore
      else {
        // Dapatkan doc user dari Firestore sesuai UID
        yield await usersCollection
            .doc(userFromFirebase.uid)
            .get()
            // Ubah doc menjadi model MyUser
            .then(
              (value) => MyUser.fromEntity(
                // Konversi doc snapshot menjadi entity
                MyUserEntity.fromDocument(value.data()!),
              ),
            );
      }
    });
  }

  @override
  // Fungsi untuk sign in dengan email dan password
  Future<void> signIn(String email, String password) async {
    try {
      // Panggil fungsi sign in Firebase Auth dengan email dan password
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      // Jika gagal, tampilkan error ke log
      log(e.toString());
      // Dan lempar kembali error
      rethrow;
    }
  }

  @override
  // Fungsi untuk sign up dengan email dan password
  Future<MyUser> signUp(MyUser myUser, String password) async {
    try {
      // Buat user baru di Firebase Auth dengan email dan password
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
          email: myUser.email, password: password);
      // Update UID user
      myUser.uid = userCredential.user!.uid;
      return myUser;
    } on FirebaseAuthException catch (e) {
      // Tampilkan error jika gagal
      log(e.toString());
      rethrow;
    }
  }
}
