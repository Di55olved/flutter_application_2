import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  final url =
      "https://thumbs.dreamstime.com/z/businessman-avatar-image-beard-hairstyle-male-profile-vector-illustration-178545831.jpg?w=768";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.tealAccent,
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: const Text("Burhan"),
                accountEmail: const Text("bbnlm@hotmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(url),
                ),
              )),
          const ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.envelope,
              color: Colors.black,
            ),
            title: Text(
              "Email",
              textScaleFactor: 1.2,
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.black,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
