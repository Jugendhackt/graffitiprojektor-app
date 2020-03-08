import 'package:flutter/material.dart';
import 'globals.dart' as globals;

class SettingsScreen extends StatelessWidget {
  final _textInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('DeepGraffiti Settings'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
            ),
            TextFormField(
              controller: _textInput,
              decoration: const InputDecoration(
                hintText: 'Enter server address',
                contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
                border: const OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                labelText: 'Server Address',
              ),
              autovalidate: true,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter a valid server address!';
                }
                return null;
              },
            ),
            Center(
              child: ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                buttonColor: Color.fromARGB(255, 170, 170, 220),
                highlightColor: Color.fromARGB(255, 200, 200, 255),
                child: RaisedButton(
                  textColor: Colors.white,
                  child: Text("Save"),
                  onPressed: () {
                    globals.serverAddress = _textInput.text;
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
    _textInput.text = globals.serverAddress;
  }
}