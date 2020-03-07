import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
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
          enableUpdateListener: true,
        ),
      ),
    );
  }

  void _onArCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;
    //controller.onPlaneDetected = _onArPlaneDetected;
    controller.onPlaneTap = _onArPlaneDetected;

    _addCube(arCoreController, vector.Vector3(0, 0, 0), vector.Vector4(0, 0, 0, 0), 0.1);
  }

  void _onArPlaneDetected(List<ArCoreHitTestResult> plane) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text("Plane"),
      )
    );
    print("OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF");
    //_addCube(arCoreController, plane.centerPose.translation, plane.centerPose.rotation, 0.4);
  }

  void _addCube(ArCoreController controller, vector.Vector3 position, vector.Vector4 rotation, double size) {
    final material = ArCoreMaterial(
      color: Color.fromARGB(0, 255, 255, 244),
    );
    final cube = ArCoreCube(
      materials: [material],
      size: vector.Vector3(size, size, size),
    );
    final node = ArCoreNode(
      shape: cube,
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
