import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'settings.dart';
import 'globals.dart' as globals;

/*class HomeScreenState extends State<HomeScreen> {
  static const platform = const MethodChannel(
      'samples.flutter/graffitiprojektor');
  int _works;

  Future<void> _callCamera(String text, Image image) async {
    print(text);
    int works = 0;
    try {
      works = await platform.invokeMethod('getARCamera', text);
    } on PlatformException catch (e) {
      print(e);
      print("Failed to load camera.");
    }

    setState(() {
      _works = works;
    });
  }
}*/

class HomeScreen extends StatelessWidget {
  final _textInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xFF18141F),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
            ),
            Image(
              image: AssetImage('assets/logo.png'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
            ),
            TextFormField(
              controller: _textInput,
              decoration: const InputDecoration(
                hintText: 'Enter text',
                contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
                border: const OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                labelText: 'Graffiti',
              ),
              autofocus: true,
              autovalidate: true,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter an arbitrary text!';
                }
                return null;
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: ButtonTheme(
                    minWidth: MediaQuery.of(context).size.width,
                    buttonColor: Color.fromARGB(255, 170, 170, 200),
                    highlightColor: Color.fromARGB(255, 200, 200, 255),
                    child: RaisedButton(
                      textColor: Colors.white,
                      child: Text("Let's go!"),
                      onPressed: () {
                        if (_textInput.text.isNotEmpty) {
                          Image image = Image.network(globals.serverAddress + '/text?message=' + _textInput.text);
                          //_callCamera(_textInput.text, image);
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 140.0),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => SettingsScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
