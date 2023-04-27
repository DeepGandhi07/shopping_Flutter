import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firestire = FirebaseFirestore.instance;
User? currentUser = auth.currentUser;

//Collection

const usersCollection = "users";
