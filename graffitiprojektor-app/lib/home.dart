import 'package:graffitiprojektor_app/screens/augmented_faces.dart';
import 'package:flutter/material.dart';
import 'screens/hello_world.dart';
import 'screens/custom_object.dart';
import 'screens/runtime_materials.dart';
import 'screens/texture_and_rotation.dart';
import 'screens/auto_detect_plane.dart';
import 'screens/graffitiprojektor.dart';

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
            title: Text("graffitiprojektor"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HelloWorld()));
            },
            title: Text("hello_world"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CustomObject()));
            },
            title: Text("custom_object"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RuntimeMaterials()));
            },
            title: Text("runtime_materials"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ObjectWithTextureAndRotation()));
            },
            title: Text("texture_and_rotation"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AutoDetectPlane()));
            },
            title: Text("auto_detect_plane"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AugmentedFacesScreen()));
            },
            title: Text("augmented_faces"),
          ),
        ],
      ),
    );
  }
}
