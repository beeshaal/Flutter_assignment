import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyProfile(),
    );
  }
}

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => {}
        ),
        backgroundColor: Colors.grey[400],
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.grey[400],
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/myprofile.jpg'),
                  ),
                  SizedBox(height: 8),
                  const Text(
                    'Bishal Thapa',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                 SizedBox(height:10),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'KYC unverified ',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 2),
                            child: Icon(
                              Icons.error_outline,
                              size: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: '  Verify now',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.directions_bus,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Long Travel",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.battery_4_bar,
                                    color: Colors.green,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(
                                "When you want to travel to a long distance from one region to another",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        options('Wallet'),
                       const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              top: 0,
                            ),
                            child: Text(
                              "You haven't verified your KYC yet!",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        options('Booking History'),
                        options('Favorite Destinations'),
                        options('Settings'),
                        options('Feedback'),
                        options('Customer support'),
                        options('About Us'),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.all(15),
                          backgroundColor: Colors.white,
                        ),
                        child: const Text(
                          'Logout',
                          style: TextStyle(color: Colors.red, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget options(String title) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.only(left: 20, right: 20, top: 8),
        title: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
        dense: true,
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}
