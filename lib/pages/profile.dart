import 'package:flutter/material.dart';
import 'package:pertemuan6/model/user.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Consumer<User>(
        builder: (context, user, child) {
          String name = user.name;
          int age = user.age;
          String emailAddress = user.emailAddress;

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Name: $name", style: const TextStyle(fontSize: 20.0)),
                Text("Age: $age", style: const TextStyle(fontSize: 20.0)),
                Text("Email Address: $emailAddress", style: const TextStyle(fontSize: 20.0)),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  child: const Text("Edit Profile"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/edit');
                  },
                )
              ],
            ),
          );
        },
      )
    );
  }
}