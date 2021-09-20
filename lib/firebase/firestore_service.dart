//Cloud noSQL database, needs UserID

import 'package:notes_app/models/user_model.dart';

class Firestore {
  Firestore(this.userObject);
  final User userObject;
}
