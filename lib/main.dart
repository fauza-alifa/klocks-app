import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';

import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id');
  Object? startupError;
  try {
    await Firebase.initializeApp();
  } catch (error) {
    startupError = error;
  }
  runApp(ProviderScope(child: KlockApp(startupError: startupError)));
}
