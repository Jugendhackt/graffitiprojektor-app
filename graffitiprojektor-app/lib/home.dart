import 'package:flutter/material.dart';
import 'package:graffitiprojektor_app/screens/graffitiprojektor.dart';
//import 'package:http/http.dart' as http;

class HomeScreen extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
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
                      child: Text("graffiti projector"),
                      onPressed: () {
                        //fetchImage(_formKey.currentState.toString());
                        //Navigator.of(context)
                        //    .push(MaterialPageRoute(builder: (context) => GraffitiProjektor()));
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

    /*Future<http.Response> fetchImage(String text) {
      return http.get('/text?message=' + text);
    }*/
  }
}
