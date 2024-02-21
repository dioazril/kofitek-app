import '../entities/entities.dart';

class MyUser {
  String uid;
  String email;
  // String password;
  String name;
  bool hasActiveCart;

  MyUser({
    required this.uid,
    required this.email,
    // required this.password,
    required this.name,
    required this.hasActiveCart,
  });

  static final empty = MyUser(
    uid: '',
    email: '',
    // password: '',
    name: '',
    hasActiveCart: false,
  );

  MyUserEntity toEntity() {
    return MyUserEntity(
      uid: uid,
      email: email,
      name: name,
      hasActiveCart: hasActiveCart,
    );
  }

  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(
      uid: entity.uid,
      email: entity.email,
      name: entity.name,
      hasActiveCart: entity.hasActiveCart,
    );
  }

  @override
  String toString() {
    return 'MyUser(uid: $uid, email: $email, name: $name, hasActiveCart: $hasActiveCart)';
  }
}
