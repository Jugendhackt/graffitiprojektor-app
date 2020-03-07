import 'package:graffitiprojektor_app/screens/augmented_faces.dart';
import 'package:flutter/material.dart';
import 'package:graffitiprojektor_app/screens/graffitiprojektor.dart';
import 'screens/hello_world.dart';
import 'screens/custom_object.dart';
import 'screens/runtime_materials.dart';
import 'screens/texture_and_rotation.dart';
import 'screens/auto_detect_plane.dart';

class HomeScreen extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('DeepGraffiti'),
      ),
      key: _formKey,
      body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image(
                image: AssetImage('assets/logo.png'),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter text',
                ),
                autofocus: true,
                autovalidate: true,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter a text!';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      
                    }
                  },
                  child: Text('Submit'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 500.0,
                    buttonColor: Color.fromARGB(255, 220, 220, 220),
                    child: RaisedButton(
                      child: Text("graffiti projector"),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => GraffitiProjektor()));
                      },
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 500.0,
                    buttonColor: Color.fromARGB(255, 220, 220, 220),
                    child: RaisedButton(
                      child: Text("hello world"),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => HelloWorld()));
                      },
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 500.0,
                    buttonColor: Color.fromARGB(255, 220, 220, 220),
                    child: RaisedButton(
                      child: Text("custom object"),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => CustomObject()));
                      },
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 500.0,
                    buttonColor: Color.fromARGB(255, 220, 220, 220),
                    child: RaisedButton(
                      child: Text("runtime materials"),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => RuntimeMaterials()));
                      },
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 500.0,
                    buttonColor: Color.fromARGB(255, 220, 220, 220),
                    child: RaisedButton(
                      child: Text("texture and rotation"),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => ObjectWithTextureAndRotation()));
                      },
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 500.0,
                    buttonColor: Color.fromARGB(255, 220, 220, 220),
                    child: RaisedButton(
                      child: Text("autodetect plane"),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => AutoDetectPlane()));
                      },
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 500.0,
                    buttonColor: Color.fromARGB(255, 220, 220, 220),
                    child: RaisedButton(
                      child: Text("augmented face"),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => AugmentedFacesScreen()));
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      /*body: ListView(
        children: <Widget>[
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => GraffitiProjektor()));
            },
            title: Text("graffiti projector"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HelloWorld()));
            },
            title: Text("hello world"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CustomObject()));
            },
            title: Text("custom object"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RuntimeMaterials()));
            },
            title: Text("runtime materials"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ObjectWithTextureAndRotation()));
            },
            title: Text("texture and rotation"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AutoDetectPlane()));
            },
            title: Text("autodetect plane"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AugmentedFacesScreen()));
            },
            title: Text("augmented faces"),
          ),
        ],
      ),*/
    );
  }
}
