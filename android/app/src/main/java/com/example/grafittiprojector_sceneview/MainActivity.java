package com.example.grafittiprojector_sceneview;

import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build.VERSION;
import android.os.Build.VERSION_CODES;
import android.os.Bundle;

public class MainActivity extends FlutterActivity {
  private static final String channel = "samples.flutter/graffitiprojektor";

  @Override
  public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
    GeneratedPluginRegistrant.registerWith(flutterEngine);
    new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), channel)
            .setMethodCallHandler(
                    (call, result) -> {
                      // Note: this method is invoked on the main thread.
                        if (call.method.equals("getARCamera")) {
                            getARCamera("");
                            result.success(0);
                        } else {
                            result.notImplemented();
                        }
                    }
            );
  }

  private void getARCamera(String image)
  {

  }
}
