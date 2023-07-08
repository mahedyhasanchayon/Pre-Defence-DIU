import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';


class ProfilePageOption extends StatelessWidget {
  const ProfilePageOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Profile",style: TextStyle(fontSize: 16.0,color: Colors.black),),
          shadowColor: Color.fromARGB(50, 184, 208, 249),
          backgroundColor: Colors.white,
          leading: IconButton( onPressed: (){}, icon: SvgPicture.asset("assets/images/menu.svg")),
          ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25.0,),
            Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/dp.png"),
              ),
              SizedBox(height: 16),
              Text(
                'Mahedy Hasan',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Student',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10),
              Divider(thickness: 1,),
              Divider(thickness: 2,color:Colors.orangeAccent ,indent: 60.0,endIndent: 60.0,),
              Divider(thickness: 1,),
              ListTile(
                leading: Icon(Icons.event),
                title: Text('Ticket'),
                onTap: () {
                  // Handle Ticket option tap
                },
              ),
              Divider(thickness: 1,),
              ListTile(
                leading: Icon(Icons.directions_bus),
                title: Text('Bus'),
                onTap: () {
                  // Handle Bus option tap
                },
              ),
              Divider(thickness: 1,),
              ListTile(
                leading: Icon(Icons.schedule),
                title: Text('Bus Schedule'),
                onTap: () {
                  // Handle Bus Schedule option tap
                },
              ),
              Divider(thickness: 1,),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Support'),
                onTap: () {
                  // Handle Support option tap
                },
              ),
              Divider(thickness: 1,),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Log Out'),
                onTap: () {
                  // Handle Log Out option tap
                },
              ),
              Divider(thickness: 1,),
            ],
          ),
        ),
          ],
        ),
      ),
    );
  }
}
