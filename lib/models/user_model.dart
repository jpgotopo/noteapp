class User {
  String userID = "Empty";
  String username = "Empty";
  String email = "Empty";

  //SInGLETON 1. Internal Constructor

  User._internalConstructor();

  // 2. single user object
  static final _singleUser = User._internalConstructor();

  //3. override constructor
  factory User() {
    return _singleUser;
  }

  setFromMap(Map<String, dynamic> userMap) {
    this.email = userMap["email"];
    this.username = userMap["username"];
    this.userID = userMap["userId"];
  }

  clearUser() {
    this.email = "Empty";
    this.userID = "Empty";
    this.username = "Empty";
  }

  String getCurrentUser() {
    return this.userID;
  }

  //just in case of new creation
  setUsername(String _username) {
    this.username = _username;
  }
}
