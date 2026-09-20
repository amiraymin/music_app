import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar homeheader() {
  return AppBar(
    backgroundColor: const Color(0xff120f16),
    surfaceTintColor: Colors.transparent,
    scrolledUnderElevation: 0,
    actions: [
      IconButton(
        icon: Icon(
          Icons.notification_important_outlined,
          color: const Color(0xFFFFFFFF),
          size: 30.r,
        ),
        onPressed: () {
          // Handle notification button press
        },
      ),
    ],
    leading: IconButton(
      icon: Icon(
        Icons.view_comfy_sharp,
        color: const Color(0xFF53abf6),
        size: 30.r,
      ),
      onPressed: () {
        // Handle menu button press
      },
    ),
  );
}

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hey John👋',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: const Color(0xffFFFFFF),
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          'What do you want to listen to today?',
          style: TextStyle(
            fontSize: 16.sp, 
            color: const Color(0xffFFFFFF),
          ),
        ),
      ],
    );
  }
}

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            style: TextStyle(color: Colors.white, fontSize: 18.sp),
            onTapOutside: (event) {
              FocusScope.of(context).unfocus();
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xff19161d),
              hintText: 'Search',
              hintStyle: TextStyle(color: const Color(0xffa9a4ad), fontSize: 18.sp),
              prefixIcon: Icon(
                Icons.search_rounded,
                color: const Color.fromARGB(255, 250, 250, 250),
                size: 25.r,
              ),
              prefixIconConstraints: BoxConstraints(minWidth: 50.w),
              contentPadding: EdgeInsets.symmetric(vertical: 14.h),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12.0.r),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12.0.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: const Color(0xff2ba2f7), width: 2.w),
                borderRadius: BorderRadius.circular(12.0.r),
              ),
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Container(
          width: 52.w,
          height: 52.h,
          decoration: BoxDecoration(
            color: const Color(0xff2ba2f7),
            borderRadius: BorderRadius.circular(12.0.r),
          ),
          child: IconButton(
            icon: Center(
              child: Icon(Icons.tune_rounded, color: Colors.white, size: 28.r),
            ),
            onPressed: () {
              // Handle filter button press
            },
          ),
        ),
      ],
    );
  }
}