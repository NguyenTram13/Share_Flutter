import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProfileList();
  }
}

class ProfileList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 160,
            color: Colors.blue,
            child: Stack(
              children: [
                Image.network(
                  'https://res.cloudinary.com/dmeyrzzjp/image/upload/v1692422644/home/zdbeqcbtev90altqma7i.jpg', // Your cover photo URL
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, left: 10.0),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://res.cloudinary.com/dmeyrzzjp/image/upload/v1692422644/home/zdbeqcbtev90altqma7i.jpg'), // Your profile picture URL
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: Text(
                    'Ngoc Tram',
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text('Banh u'),
                ),
                Container(
                  padding: EdgeInsets.only(left: 4.0, right: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.orange),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.add_outlined),
                            Text('Add to story')
                          ],
                        ),
                        onPressed: () {
                          // ...
                        },
                      ),
                      ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Color.fromARGB(255, 199, 201, 203)),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.edit_outlined),
                            Text('Edit profile')
                          ],
                        ),
                        onPressed: () {
                          // ...
                        },
                      ),
                      ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Color.fromARGB(255, 199, 201, 203)),
                        ),
                        child: Icon(Icons.more_horiz),
                        onPressed: () {
                          // ...
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          Row(
            children: [
              Container(
                width: 360,
                height: 10,
                color: Colors.black26,
              )
            ],
          ),
          ListTile(
            title: Text('Photos'),
            subtitle: Text('View your photos'),
            leading: Icon(Icons.photo),
            onTap: () {
              // Navigate to photos page
            },
          ),
          ListTile(
            title: Text('Friends'),
            subtitle: Text('View your friends'),
            leading: Icon(Icons.people),
            onTap: () {
              // Navigate to friends page
            },
          ),
          // Add more sections as needed
        ],
      ),
    );
  }
}
