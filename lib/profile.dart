import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool notifications = true;
  bool emailUpdates = false;
  bool darkMode = true;
  bool privacyMode = true;
  String gender = "Male";
  String? themeColor;
  double like = 128;
  int quantity = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text("Interactive Profile"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/rasm.jpeg"),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("John User", style: TextStyle(fontSize: 18)),
                        Text(
                          " Status: Active",
                          style: TextStyle(
                            fontSize: 16,
                            backgroundColor: Colors.lightGreenAccent,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Column(
                children: [
                  SwitchListTile(
                    value: notifications,
                    activeThumbColor: Colors.white,
                    inactiveThumbColor: Colors.white,
                    activeTrackColor: Colors.green,
                    onChanged: (value) {
                      setState(() {
                        notifications = value;
                      });
                    },
                    title: Text("Notifications"),
                  ),
                  SwitchListTile(
                    value: emailUpdates,
                    activeThumbColor: Colors.white,
                    inactiveThumbColor: Colors.white,
                    activeTrackColor: Colors.green,
                    onChanged: (value) {
                      setState(() {
                        emailUpdates = value;
                      });
                    },
                    title: Text("Email Updates"),
                  ),
                  SwitchListTile(
                    value: darkMode,
                    activeThumbColor: Colors.white,
                    inactiveThumbColor: Colors.white,
                    activeTrackColor: Colors.green,
                    onChanged: (value) {
                      setState(() {
                        darkMode = value;
                      });
                    },
                    title: Text("Dark Mode"),
                  ),
                ],
              ),
            ),
            Card(
              child: SwitchListTile(
                value: privacyMode,
                activeThumbColor: Colors.white,
                inactiveThumbColor: Colors.white,
                activeTrackColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    privacyMode = value;
                  });
                },
                title: Text("Privacy Mode"),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text("Gender:\n", style: TextStyle(fontSize: 17)),
                            Text(
                              "Theme Color:",
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RadioGroup(
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = value!;
                                });
                              },
                              child: Row(
                                children: [
                                  Text('Male'),
                                  Radio(value: "Male"),
                                  Text("Female"),
                                  Radio(value: "Female"),
                                ],
                              ),
                            ),
                            DropdownButton(
                              value: themeColor,
                              hint: Text("Rang tanla"),
                              menuWidth: 300,
                              borderRadius: .circular(20),
                              items: [
                                DropdownMenuItem(
                                  value: "blue",
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(" Blue"),
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: "red",
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(" Red"),
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.red,
                                      ),
                                    ],
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: "green",
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(" Green"),
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.green,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  themeColor = value!;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.heart_broken, color: Colors.red),
                        ),
                        Text("Likes:  128  "),
                        Slider(
                          value: like,
                          onChanged: (value) {
                            setState(() {
                              like = value;
                            });
                          },
                          max: 200,
                          divisions: 200,
                          label: like.toStringAsFixed(0),
                          activeColor: Colors.blue,
                          thumbColor: Colors.white,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 140,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.heart_broken, color: Colors.white),
                              Text(
                                "Like",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 140,
                          margin: .all(5),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [Icon(Icons.restart_alt), Text("Reset")],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Quantity: "),
                    InkWell(
                      onTap: () {
                        if (quantity > 0) {
                          quantity--;
                        }
                        setState(() {
                          quantity;
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        color: Colors.blue,
                        child: Icon(Icons.remove, color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      alignment: .center,
                      height: 25,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.white,
                      ),
                      child: Text("$quantity"),
                    ),
                    SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        if (quantity >= 0) {
                          quantity++;
                        } else {}
                        setState(() {
                          quantity;
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        color: Colors.grey,
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            Container(
              height: 50,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextButton(
                onPressed: () {},
                child: Container(
                  alignment: .center,
                  height: 45,
                  width: 375,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: Text(
                    "Save Changes",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
