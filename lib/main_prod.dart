import 'package:flutter/material.dart';

import 'package:trueme/app/app.dart';
import 'package:trueme/flavors.dart';
import 'package:trueme/start_up_services.dart';

void main() async {
  F.appFlavor = Flavor.PROD;
  WidgetsFlutterBinding.ensureInitialized();

  await StartUpService.initServices(Flavor.PROD);
  runApp(const App());
}
