import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class BusScheduleOption extends StatefulWidget {
  const BusScheduleOption({Key? key}) : super(key: key);

  @override
  State<BusScheduleOption> createState() => _MyWebsiteState();
}

class _MyWebsiteState extends State<BusScheduleOption> {

  double _progress = 0;
  late InAppWebViewController  inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{

        var isLastPage = await inAppWebViewController.canGoBack();

        if(isLastPage){
          
          return false;
        }

        return true;
      },
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              InAppWebView(
                
                initialUrlRequest: URLRequest(
                  url: Uri.parse("https://docs.google.com/spreadsheets/d/1nFRgMpTl5ypO04fSna5aqWFXQCenmkai6vNDLDOfjUA/edit?usp=sharing")
                ),
                onWebViewCreated: (InAppWebViewController controller){
                  inAppWebViewController = controller;
                },
                onProgressChanged: (InAppWebViewController controller , int progress){
                  setState(() {
                    _progress = progress / 100;
                  });
                },
              ),
              _progress < 1 ? Container(
                child: LinearProgressIndicator(
                  value: _progress,
                ),
              ):SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}



// import 'package:flutter/cupertino.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class BusLocationOption extends StatefulWidget {
//   const BusLocationOption({super.key});

//   @override
//   State<BusLocationOption> createState() => _BusLocationOptionState();
// }

// class _BusLocationOptionState extends State<BusLocationOption> {
// late final WebViewController _controller;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: WebViewWidget(controller: _controller)
//       // Column(
//       //           mainAxisAlignment: MainAxisAlignment.start,
//       //           crossAxisAlignment: CrossAxisAlignment.start,
//       //           children: [
//       //             Text("Your Bus Location msg",textAlign: TextAlign.start,style: GoogleFonts.sen(fontSize: 13.0,fontWeight: FontWeight.w500,color: Color(0xFF899AA1))),
                  
//       //           ],
//       //         ),
//     );
//   }
// }

