import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:frontend/vm/tributes_vm.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider_architecture/provider_architecture.dart';

class ViewTributes extends StatefulWidget {
  @override
  _ViewTributesState createState() => _ViewTributesState();
}

class _ViewTributesState extends State<ViewTributes> {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<TributesViewModel>.withConsumer(
      onModelReady: (model) => model.getTributes(),
      builder: (context, model, _) => Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            SizedBox(height: 20),
            Image.network(
              "https://res.cloudinary.com/dchsw3ztg/image/upload/v1613847984/72e84f05b4b44a10af6aa7b997e0a422_oidqec.jpg",
              scale: 3.0,
            ),
            SizedBox(height: 20),
            Expanded(
              child: model.busy
                  ? Center(
                      child: SpinKitChasingDots(
                          size: 40, color: Colors.amberAccent),
                    )
                  : ListView.builder(
                      itemCount: model.tributes.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
                          height: 180,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                model.tributes[index].body.toLowerCase(),
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "~ ${model.tributes[index].name} ~",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
            )
          ],
        ),
      ),
      viewModelBuilder: () => TributesViewModel(),
    );
  }
}
