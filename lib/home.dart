import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final _textInput = TextEditingController();

  void _callCamera(String text, Image image) {
    print(text);
    // TODO: create another flutter screen and embed camera or create screen in java?
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    buttonColor: Color.fromARGB(255, 20, 150, 20),
                    highlightColor: Color.fromARGB(255, 100, 200, 100),
                    child: RaisedButton(
                      textColor: Colors.white,
                      child: Text("Let's go!"),
                      onPressed: () {
                        Image image = Image.network("https://github.com/Jugendhackt/graffitiprojektor-app/blob/master/logo.png"/*'/text?message=' + text*/);
                        _callCamera(_textInput.text, image);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
