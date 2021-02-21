import 'package:flutter/material.dart';
import 'package:frontend/utils/strings.dart';
import 'package:frontend/widgets/button.dart';

class OptionsPage extends StatefulWidget {
  @override
  _OptionsPageState createState() => _OptionsPageState();
}

class _OptionsPageState extends State<OptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            "https://res.cloudinary.com/dchsw3ztg/image/upload/v1613847984/72e84f05b4b44a10af6aa7b997e0a422_oidqec.jpg",
            scale: 2.0,
          ),
          SizedBox(height: 10),
          CustomButton(border: true, onTap: () => Navigator.pushNamed(context, WriteTributesPage),),
          SizedBox(height: 10),
          CustomButton(onTap: () => Navigator.pushNamed(context, MakeDonationPage),),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}

// Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           gradient: LinearGradient(colors: [
//             transBlack20,
//             transBlack40,
//             transBlack60,
//             transBlack80,
//           ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
//         ),
//       ),
