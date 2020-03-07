import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class GraffitiProjektor extends StatefulWidget {
  @override
  _GraffitiProjektorState createState() => _GraffitiProjektorState();
}

class _GraffitiProjektorState extends State<GraffitiProjektor> {
  ArCoreController arCoreController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Graffiti Projector'),
        ),
        body: ArCoreView(
          onArCoreViewCreated: _onArCoreViewCreated,
          enableTapRecognizer: true,
        ),
      ),
    );
  }

  void _onArCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;
    //controller.onPlaneDetected = _onArPlaneDetected;
    controller.onPlaneTap = _onArPlaneDetected;

    //_addCube(arCoreController, vector.Vector3(0, 0, 0), vector.Vector4(0, 0, 0, 0), 0.1);
    _addImage(arCoreController, vector.Vector3(0, 0, 0), vector.Vector4(0, 0, 0, 0), 0.2);
  }

  void _onArPlaneDetected(List<ArCoreHitTestResult> plane) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text("Plane"),
      )
    );
  }

  void _addImage(ArCoreController controller, vector.Vector3 position, vector.Vector4 rotation, double size) async {
    final ByteData textureBytes = await rootBundle.load('assets/earth.jpg');

    final material = ArCoreMaterial(
      reflectance: 0,
      roughness: 0,
      color: Color.fromARGB(255, 255, 255, 255),
      textureBytes: textureBytes.buffer.asUint8List());
    final plane = ArCoreCube(
      materials: [material],
      size: vector.Vector3(size, size, size),
    );
    final node = ArCoreNode(
      shape: plane,
      position: position,
      rotation: rotation,
    );
    controller.addArCoreNode(node);
  }

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }
}
