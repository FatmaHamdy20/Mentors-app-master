class UserModel {
  final String username;
  final String uid;
  final String profileImageUrl;
  final String email;

  UserModel({
    required this.username,
    required this.uid,
    required this.profileImageUrl,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'uid': uid,
      'profileImageUrl': profileImageUrl,
      'email': email,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      username: map['username'] ?? '',
      uid: map['uid'] ?? '',
      profileImageUrl: map['profileImageUrl'] ?? '',
      email: map['email'] ?? '',
    );
  }
}
