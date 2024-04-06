// Import necessary packages for Firebase authentication and Firestore
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

// Create a class named FireDB to handle Firebase database operations
class FireDB{
  // Create an instance of FirebaseAuth for authentication
  final FirebaseAuth _auth = FirebaseAuth.instance;
  createNewUser(String name , String email , String photoUrl , String uid) async{
    // Get the current authenticated user
    final User? current_user = _auth.currentUser;
    // Check if the user already exists by calling the getUser method
    if(await getUser()){
      print("USER ALREADY EXISTS");
    }else{
      // If the user does not exist, add a new document to the "users" collection in Firestore
      await FirebaseFirestore.instance.collection("users").doc(current_user!.uid).set(
          {
            "name" : name,
            "email" : email,
            "photoUrl" : photoUrl,
            "money" : "55555"
          }
      ).then((value)  {
        // Print a message indicating successful user registration
        print("User Registered Successfully");

      });

    }

  }


  // Method to check if a user exists in Firestore
  Future<bool> getUser() async{
    // Get the current authenticated user
    final User? current_user = _auth.currentUser;
    // Initialize an empty string to store user data
    String user = "";

    // Retrieve user data from Firestore based on the user's UID
    await FirebaseFirestore.instance.collection("users").doc("sjfsjfksjmn").get().then((value){
      // Store the user data in the 'user' variable
      user = value.data().toString();
    });
    // Check if the 'user' variable contains the string "null"
    if(user.toString() == "null"){
      // If it does, return false indicating that the user does not exist
      return false;
    }else{
      // If it doesn't contain "null", return true indicating that the user exists
      return true;
    }
  }






}