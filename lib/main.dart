import 'package:afandem_app/afandem_app.dart';
import 'package:afandem_app/core/local_storage/local_storage.dart';
import 'package:afandem_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();
  await CacheHelper.init();

  runApp(
    AfandemApp(
      appRouter: AppRouter(),
    ),
  );
}
