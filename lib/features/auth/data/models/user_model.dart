import 'package:uts_mobile_newest/core/constants/app_constants.dart'; 

class User {
  final String username;
  final String password;
  final UserRole role;

  User({required this.username, required this.password, required this.role});
}