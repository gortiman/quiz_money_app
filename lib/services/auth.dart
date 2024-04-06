// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'firedb.dart';
//
//
// // Create instances of FirebaseAuth and GoogleSignIn
// final FirebaseAuth _auth = FirebaseAuth.instance;
// final GoogleSignIn googleSignIn = GoogleSignIn();
//
//
// // Define a function for signing in with Google
// Future<User?> signWithGoogle() async{
//
//   // try{
//
//
//   // Prompt the user to select a Google account for sign-in(signin ke liye user ko ek google ka account chunne ke liye kahe)
//   final GoogleSignInAccount? googlesignInAccount = await googleSignIn.signIn();
//   // Retrieve authentication information from the selected Google account(chayanit google khate se pramanikaran jankari punarprapt kre)
//   final GoogleSignInAuthentication googleSignInAuthentication = await googlesignInAccount!.authentication;
//
//   // Create AuthCredential using Google Sign-In authentication data
//   final AuthCredential credential = GoogleAuthProvider.credential(idToken: googleSignInAuthentication.idToken , accessToken: googleSignInAuthentication.accessToken);
//
//   // Sign in with the created credential
//   final usercredential = await _auth.signInWithCredential(credential);
//
//   // Get the user object from the signed-in user credential
//   final User? user = usercredential.user;
//
//   // Assert statements to ensure the user and authentication details are valid
//   assert(!user!.isAnonymous);
//   // ignore: unnecessary_null_comparison
//   assert(await user!.getIdToken() != null);
//
//   // Get the current signed-in user
//   final User? currentUser = _auth.currentUser;
//   // Assert statement to verify the user ID consistency
//   assert(currentUser!.uid == user!.uid);
//   // Create a new user in the Firebase database using the FireDB class
//   await FireDB().createNewUser(
//       user!.displayName.toString(),
//       user.email.toString(),
//       user.photoURL.toString() ,
//       user.uid.toString()
//   );
//   print(user);
//   // }catch(e){
//   //   print("ERROR OCCURED IN SIGN IN");
//   //   print(e);
//   // }
//
// }
//
//
//
//
//




import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kbc_quiz/services/firedb.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

Future<User?> signWithGoogle() async{
  final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!.authentication;
  final AuthCredential credential = GoogleAuthProvider.credential(
    idToken: googleSignInAuthentication.idToken,
    accessToken: googleSignInAuthentication.accessToken,
  );
  final usercredential = await _auth.signInWithCredential(credential);
  final User? user = usercredential.user;

  assert(!user!.isAnonymous);
  assert(await user!.getIdToken() != null);
  final User? currentUser = _auth.currentUser;
  assert(currentUser!.uid == user!.uid);
  await FireDB().createNewUser(
      user!.displayName.toString(),
      user!.email.toString(),
      user!.photoURL.toString(),
      user.uid
  );
  print(user);
}