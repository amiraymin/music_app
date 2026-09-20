import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MusicApp());
}

class MusicAppContainer extends StatelessWidget {
  const MusicAppContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const MusicApp();
      },
    );
  }
}
