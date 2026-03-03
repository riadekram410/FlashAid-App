import 'package:flutter/material.dart';

import 'About.dart';
import 'Emergency.dart';
import 'Help.dart';
import 'Notification.dart';
import 'Payment.dart';


class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [

            SizedBox(height: 20),


            Text(
              "Account",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30),


            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(15),
              color: Colors.grey[200],
              child: Row(
                children: [

                  CircleAvatar(
                    radius: 30,
                    child: Icon(Icons.person),
                  ),

                  SizedBox(width: 15),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hasan Rahman",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("+880 1712 345678"),
                    ],
                  )
                ],
              ),
            ),

            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text("Emergency Contacts"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EmergencyPage(),
                  ),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.payment),
              title: Text("Payment Methods"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentPage(),
                  ),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notification Settings"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationPage(),
                  ),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help & Support"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HelpPage(),
                  ),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutPage(),
                  ),
                );
              },

            ),

            Spacer(),

            // Sign Out works here
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {},
                child: Text(
                  "Sign Out",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}



