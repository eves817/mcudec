import 'dart:html';
import 'package:firebase/firebase.dart';

void main() {
 initializeApp (
    apiKey: "AIzaSyA36ilQbXSqeoBzOn_E0ohteYhb_tuMD9Y",
    authDomain: "fireweb-f7b0f.firebaseapp.com",
    databaseURL: "https://fireweb-f7b0f.firebaseio.com",
    projectId: "fireweb-f7b0f",
    storageBucket: "fireweb-f7b0f.appspot.com",
    messagingSenderId: "946087023219",
    appId: "1:946087023219:web:dda378f29d8755aaa31006",
    measurementId: "G-6DE8H9FE0X"
    );
    var testButton = document.querySelector('#testButton');
      testButton.onClick.listen((MouseEvent){
      final GoogleAuthProvider googleAuthProvider = GoogleAuthProvider() ;
      auth().signInWithPopup(googleAuthProvider).then((result){
        print("Success");
      }).catchError((e){
        print("Fail");
      });
      });
}
