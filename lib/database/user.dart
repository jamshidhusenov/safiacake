class User {
  String userName;
  String password;

  User(this.userName, this.password);
}

User user1 = User("jamshid", "2003");
User user2 = User("asror", "2002");

List<User> users = [user1, user2];
Map<String, String> map = {
  user1.userName: user1.password,
  user2.userName: user2.password
};
