import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:frontend/utils/strings.dart';
import 'package:frontend/vm/tributes_vm.dart';
import 'package:frontend/widgets/button.dart';
import 'package:provider_architecture/provider_architecture.dart';

class WriteTribute extends StatefulWidget {
  @override
  _WriteTributeState createState() => _WriteTributeState();
}

class _WriteTributeState extends State<WriteTribute> {
  TextEditingController name = TextEditingController();
  TextEditingController body = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<TributesViewModel>.withConsumer(
      builder: (context, model, _) => Scaffold(
        backgroundColor: Colors.black,
        body: model.busy
            ? Center(
                child: SpinKitChasingDots(
                  size: 60,
                  color: Colors.amberAccent,
                ),
              )
            : ListView(
                children: [
                  SizedBox(height: 20),
                  Image.network(
                    "https://res.cloudinary.com/dchsw3ztg/image/upload/v1613847984/72e84f05b4b44a10af6aa7b997e0a422_oidqec.jpg",
                    scale: 3.0,
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      height: 50,
                      width: double.infinity,
                      child: Center(
                        child: TextFormField(
                          controller: name,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              hintText: "Your Name",
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.amberAccent[100]),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      height: 300,
                      width: double.infinity,
                      child: TextFormField(
                        controller: body,
                        keyboardType: TextInputType.multiline,
                        textInputAction: TextInputAction.done,
                        maxLines: 300,
                        decoration: InputDecoration(
                            hintText: "Your Words",
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.italic),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.amberAccent[100]),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButtonSend(onTap: () async {
                        if (name == null && body == null) {
                          await model.writeTribute(
                              name.text.toUpperCase(), body.text);
                          if (model.success) {
                            Navigator.pushNamed(context, ViewTributesPages);
                          } else {
                            showDialog(
                              context: context,
                              builder: (context) => Container(
                                  color: Colors.amberAccent,
                                  height: 200,
                                  width: 300),
                            );
                          }
                        }
                        else{
                          final snackBar = SnackBar(content: Text('Either Field Cannot be empty', style: TextStyle(color: Colors.white),),backgroundColor: Colors.redAccent,);
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                        name.clear();
                        body.clear();
                      })
                    ],
                  ),
                  SizedBox(height: 50),
                ],
              ),
      ),
      viewModelBuilder: () => TributesViewModel(),
    );
  }
}
