import 'package:flutter/material.dart';
import 'package:pertemuan6/model/user.dart';
import 'package:provider/provider.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final emailAddressController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    emailAddressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<User>(context, listen: false);
    nameController.text = userProvider.name;
    ageController.text = userProvider.age.toString();
    emailAddressController.text = userProvider.emailAddress;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary
      ),
      body: Form(
        key: formKey,
        child: Container(
          margin: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a value';
                  } else if (value.contains('@')) {
                    return 'Name shouldn\'t contain \'@\'';
                  } else {
                    return null;
                  }
                },
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                ),
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                controller: ageController,
                decoration: InputDecoration(
                  labelText: 'Age',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                ),
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a value';
                  } else if (!value.contains('@')) {
                    return 'Email Address should have \'@\'';
                  } else {
                    return null;
                  }
                },
                controller: emailAddressController,
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                ),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                child: const Text("Submit"),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    userProvider.changeDetails(nameController.text, int.parse(ageController.text), emailAddressController.text);

                    const snackBar = SnackBar(
                      content: Text("Successfully updated the user's details")
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
              )
            ],
          ),
        )
      )
    );
  }
}