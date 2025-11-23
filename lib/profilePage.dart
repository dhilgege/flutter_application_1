import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  bool iswitchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              SizedBox(height: 20),
              // col1
              Text(
                'settings',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Row(
                // row1
                children: [
                  Image.asset('asasets/images/profile.png', height: 60),
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        'welcome',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      Text(
                        'mr.fadil ganteng',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.logout, size: 20),
                  ),
                ],
              ),
          
              Divider(color: Colors.grey.shade300, height: 30),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("account"),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              Divider(color: Colors.grey.shade300, height: 30),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("account"),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              Divider(color: Colors.grey.shade300, height: 30),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("account"),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              Divider(color: Colors.grey.shade300, height: 30),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("account"),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              Divider(color: Colors.grey.shade300, height: 30),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("account"),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              Divider(color: Colors.grey.shade300, height: 30),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("account"),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              Divider(color: Colors.grey.shade300, height: 30),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("account"),
          
                trailing: Switch(
                  value: iswitchValue,
                  onChanged: (value) {
                    setState(() {
                      iswitchValue = value;
                    });
                  },
                ),
              ),
              Divider(color: Colors.grey.shade300, height: 30),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Text(
                      "if you hafe any another query you can reach out to us.",
                      textAlign: .center,
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(height: 20,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
