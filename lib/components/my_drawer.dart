import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuth;
import 'package:flutter/material.dart';
import 'package:neon/pages/profile_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  //logout user
  void logout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //drawer header
              DrawerHeader(
                child: Icon(
                  Icons.favorite,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              const SizedBox(height: 25),
              //home tile
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(Icons.home),

                  title: Text("H O M E"),

                  onTap: () {
                    //this is already the home screen so pop the drawer
                    Navigator.pop(context);
                  },
                ),
              ),

              const SizedBox(height: 25),

              //profile tile
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(Icons.person),

                  title: const Text("P R O F I L E"),
                  onTap: () {
                    //this is already the profile screen so pop the drawer
                    Navigator.pop(context);

                    //navigate to the profile page
                    Navigator.pushNamed(context, '/profile_page');
                  },
                ),
              ),

              const SizedBox(height: 25.0),

              //user tile
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(Icons.group),

                  title: const Text("U S E R S"),

                  onTap: () {
                    //this is already the users screen so pop the drawer
                    Navigator.pop(context);
                    //navigate to the profile page
                    Navigator.pushNamed(context, '/users_page');
                  },
                ),
              ),
            ],
          ),

          const SizedBox(height: 25.0),

          //logout tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.arrow_back,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),

              title: Text("L O G O U T"),
              onTap: () {
                //this is already the home screen so pop the drawer
                Navigator.pop(context);

                // logout user
                logout();
              },
            ),
          ),
        ],
      ),
    );
  }
}
