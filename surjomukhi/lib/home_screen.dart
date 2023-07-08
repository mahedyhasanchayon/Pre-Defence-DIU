// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'homescreenPages/buslocationpageoption.dart';
// import 'homescreenPages/homepageoption.dart';
// import 'homescreenPages/profilepageoption.dart';
// import 'homescreenPages/ticketpageoption.dart';
// Future main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(HomeScreen());
// }

// class HomeScreen extends StatefulWidget {
//   final List? allData;
//   // void listLoader(){
//   //   s
//   // }
//   static List<Widget> _widgetOptions = <Widget>[

//     homePageOption(),
//     TicketPageOption(),
//     BusLocationOption(),
//     ProfilePageOption(),
//   ];
//    HomeScreen(
//     {this.allData});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;

// void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;

//     });
//   }

//   @override
//   Widget build(BuildContext context) {
    
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Material App',
//       home: Scaffold(
//         // appBar: AppBar(
//         //   title: Text("",style: TextStyle(fontSize: 16.0,color: Colors.black),),
//         //   shadowColor: Color.fromARGB(50, 184, 208, 249),
//         //   backgroundColor: Colors.white,
//         //   leading: IconButton( onPressed: (){}, icon: SvgPicture.asset("assets/images/menu.svg")),
//         //   actions: [
//         //    IconButton(onPressed: (){}, icon: Image(image: AssetImage("assets/images/pp.png")))
//         //   ],
          
//         // ),
//         body: 
        
//         // **** Home Screen Multiple pages ****
//         Container(
//           height: double.infinity,
//           width: double.infinity,
//           decoration: BoxDecoration(color: Colors.white),
//           child: SingleChildScrollView(
//             child: HomeScreen._widgetOptions.elementAt(_selectedIndex),
//           ),
//         ),

//         // **** Navigation Bar Bottom ****
//      bottomNavigationBar: BottomNavigationBar(
//                     backgroundColor: Colors.black,
//                     unselectedItemColor: Colors.black,
//                     selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
//                     unselectedLabelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//                     fixedColor: Colors.orangeAccent,
//                     items: const [
//                     BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home' ),
//                     BottomNavigationBarItem(icon: Icon(Icons.directions_bus_filled_outlined),label:'Tickets'),
//                     BottomNavigationBarItem(icon: Icon(Icons.mode_of_travel_outlined),label:'Bus Update' ),
//                     BottomNavigationBarItem(icon: Icon(Icons.person),label:'Profile' )
                    
//                   ],
//                   currentIndex: _selectedIndex,
//                   onTap: _onItemTapped,
//                   ),
//       ),
//     );
    
//   }

  

//   Future ticketcount({required int numTicket})async{
//     final docUser = FirebaseFirestore.instance.collection('ticket').doc('mirpur');

//     final json = {
//       'count': numTicket,
//     };
//     await docUser.set(json);
//   }
// }