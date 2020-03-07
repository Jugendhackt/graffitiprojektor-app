import 'package:graffitiprojektor_app/screens/augmented_faces.dart';
import 'package:flutter/material.dart';
import 'package:graffitiprojektor_app/screens/graffitiprojektor.dart';
import 'screens/hello_world.dart';
import 'screens/custom_object.dart';
import 'screens/runtime_materials.dart';
import 'screens/texture_and_rotation.dart';
import 'screens/auto_detect_plane.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Graffitiprojector App'),
      ),
      body: ListView(
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
      ),
    );
  }
}
