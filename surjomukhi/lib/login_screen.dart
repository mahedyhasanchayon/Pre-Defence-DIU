import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:surjomukhi/controller/login_controller.dart';
import 'package:surjomukhi/home_screen.dart';
import 'package:surjomukhi/model/login.dart';
import 'package:surjomukhi/views/landing/landing.dart';
class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {
    TextEditingController idcontroller= TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  late Future<List<LoginData>> listIfObj;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(color: Color.fromARGB(255, 253, 252, 252)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 50.0,),
                  Container(
                    height: 33.0,
                    width: 243.0,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/login1.png"))),
                    child:  Align(alignment: Alignment.center, child: Text("SURJOMUKHI",style: GoogleFonts.poppins(fontSize: 24.0,fontWeight: FontWeight.w600,color: Color(0xFF494949)))),
                  ),
                  SizedBox(height: 1.0,),
                  Text("The Way to DIU",style: GoogleFonts.poppins(fontSize: 24.0,fontWeight: FontWeight.w600,color: Color(0xFF379FAA))),
                  SizedBox(height: 41.0,),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left:30.0 ),
                    child: Text("Hi,",textAlign: TextAlign.start, style: GoogleFonts.poppins(fontSize: 25.0,fontWeight: FontWeight.w600,color: Color(0xFF000000,))),        
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left:30.0 ),
                    child: Text("Login Now",textAlign: TextAlign.start,style: GoogleFonts.poppins(fontSize: 25.0,fontWeight: FontWeight.w600,color: Color(0xFF000000))),
                  ),
                  SizedBox(height: 40.0,),
                  Container(
                    height: 75.0 ,
                    width: 315.0,
                    child: TextField(
                      controller: idcontroller,
                      decoration: InputDecoration(labelText: "Enter Your ID", hintText: "193-15-3**4",border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(height: 25.0,),
                  Container(
                    height: 75.0 ,
                    width: 315.0,
                    child: TextField(
                      controller: passwordcontroller,
                      decoration: InputDecoration(labelText: "Enter Your Password", hintText: "Your Portal Password",border: OutlineInputBorder()),
                    ),
                  ),
                 
                  SizedBox(height: 50.0,),
                  GestureDetector(
                    onTap: () {
        
                      listIfObj = LoginController().getSemesterResult(idcontroller.text, passwordcontroller.text);
                      print(listIfObj);
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LandingPage()   ));
                      // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DataGet(id: id, semester: sem)));
                    },
                    child: Container(
                      height: 55.0,
                      width: 315.0,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),color: Color(0xFF98EAF3) ),
                      child: Align(alignment: Alignment.center, child: Text("Login",textAlign: TextAlign.start,style: GoogleFonts.poppins(fontSize: 16.0,fontWeight: FontWeight.w500,color: Color(0xFF004A54)))),
                    ),
                  ),
                  SizedBox(height: 35.0,),
                  SvgPicture.asset("assets/images/homebuslogo2.svg",height: 158.0,width: 291,)
                  
                ],
              ),
        
            )
            
            
            ),
        ),
      );

    
  }
}