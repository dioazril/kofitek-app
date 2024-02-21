class MyUserEntity {
  String uid;
  String email;
  // String password;
  String name;
  bool hasActiveCart;

  MyUserEntity({
    required this.uid,
    required this.email,
    // required this.password,
    required this.name,
    required this.hasActiveCart,
  });

  Map<String, Object?> toDocument() {
    return {
      'uid': uid,
      'email': email,
      // 'password': password,
      'name': name,
      'hasActiveCart': hasActiveCart,
    };
  }

  static MyUserEntity fromDocument(Map<String, Object?> doc) {
    return MyUserEntity(
      uid: doc['uid'] as String,
      email: doc['email'] as String,
      // password: doc['password'] as String,
      name: doc['name'] as String,
      hasActiveCart: doc['hasActiveCart'] as bool,
    );
  }
}
