import 'package:flutter/material.dart';
import 'package:frontend/utils/strings.dart';
import 'package:frontend/views/make_donation.dart';
import 'package:frontend/views/options_page.dart';
import 'package:frontend/views/view_tributes.dart';
import 'package:frontend/views/write_tribute.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: OptionPage,
      routes: {
        OptionPage : (context) => OptionsPage(),
        WriteTributesPage : (context) => WriteTribute(),
        ViewTributesPages : (context) => ViewTributes(),
        MakeDonationPage : (context) => MakeDonation()
      },
    );
  }
}

