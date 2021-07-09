import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sample_sns_login/src/app1.dart';
import 'package:sample_sns_login/src/pages/login.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("SNS Login"),
      ),
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
          if (!snapshot.hasData){
            return LoginWidget();
          } else {
            return Center(
              child: Column(
                children: [
                  Text("${snapshot.data!.displayName}"),
                  Text("${snapshot.data!.email}"),
                  FlatButton(
                      onPressed: FirebaseAuth.instance.signOut, child: Text("Logout")
                  ),

                  Text(
                      'Profile'
                  ),
                  SizedBox(height: 32),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(snapshot.data!.photoURL!) ,
                  ),
                  SizedBox(height: 8),
                ],
              ),
            );
          }
        },
      ),

    );
  }
}
