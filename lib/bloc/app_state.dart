import 'package:bloc_flutter/models/usermodel.dart';

abstract class Initialstate{}

class LoadinState extends Initialstate{}

class SuccessfulState extends Initialstate{
  List<UserModel> users;
  SuccessfulState({required this.users});

}

class FailureState extends Initialstate{}