import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 15),

              // Top Header
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Icon(Icons.local_hospital, color: Colors.red, size: 28),
                    SizedBox(width: 8),
                    Text(
                      "FlashAid",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: Icon(Icons.person),
                    )
                  ],
                ),
              ),

              SizedBox(height: 20),

           // quick call box
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.call, color: Colors.red),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Need an ambulance now? Call quickly.",
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 25),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Details ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: 12),

              SizedBox(
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [

                    spotlightCard(
                      "ICU Ambulance",
                      "Ventilator, oxygen, monitor support",
                    ),

                    spotlightCard(
                      " PTE Ambulance",
                      "Comfortable AC service",
                    ),

                    spotlightCard(
                      "Air Ambulance",
                      "Budget emergency ride",
                    ),

                    spotlightCard(
                      "Freezer Ambulance",
                      "Mortuary transportation",
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),


              // Features

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Features",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: 12),

              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [

                    exclusiveCard(
                      "24/7 Available",
                      "Call anytime day or night",
                    ),

                    exclusiveCard(
                      "Fast Response",
                      "Nearest ambulance assigned quickly",
                    ),

                    exclusiveCard(
                      "Trained Staff",
                      "Professional driver & helper",
                    ),

                    exclusiveCard(
                      "Affordable Cost",
                      "Different price options",
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }


  Widget spotlightCard(String title, String subtitle) {
    return Container(
      width: 180,
      margin: EdgeInsets.only(left: 16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.red[50],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.local_hospital,
                color: Colors.red, size: 40),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 5),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }


  Widget exclusiveCard(String title, String subtitle) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(left: 16),
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.red),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.star, color: Colors.red),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 5),
          Text(
            subtitle,
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}