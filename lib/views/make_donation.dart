import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class MakeDonation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10),
           Image.network(
            "https://res.cloudinary.com/dchsw3ztg/image/upload/v1613847984/72e84f05b4b44a10af6aa7b997e0a422_oidqec.jpg",
            scale: 2.0,
          ),
          // SizedBox(height: 10),
          Center(
            child: Text(
              "FirstBank",
              style: GoogleFonts.sansita(fontSize: 15, color: Colors.amberAccent),
            ),
          ),
          // SizedBox(height: 10),
          Center(
            child: Text(
              "Oguamalam Chidera Peace",
              style: GoogleFonts.sansita(fontSize: 15, color: Colors.amberAccent),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: InkWell(
              focusColor: Colors.amberAccent,
              onTap: () =>
                  Clipboard.setData(ClipboardData(text: "3122308595")).then(
                (_) {
                  final toast = FToast(context);
                  toast.showToast(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.all(8.0),
                      height: 40,
                      width: 120,
                      child: Center(
                        child: Text(
                          'Copied!',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    toastDuration: Duration(milliseconds: 300),
                    gravity: ToastGravity.BOTTOM,
                  );
                },
              ),
              child: Text(
                "3122308595  COPY",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.amberAccent,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
