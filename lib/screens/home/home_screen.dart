import 'package:flutter/material.dart';
import 'package:music_app/widgets/common/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF120f16),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notification_important_outlined,
              color: Color(0xFFFFFFFF),
              size: 30,
            ),
            onPressed: () {
              // Handle notification button press
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.view_comfortable_outlined,
            color: Color(0xFF53abf6),
            size: 30,
          ),
          onPressed: () {
            // Handle menu button press
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hey John👋',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Color(0xffFFFFFF)),
              ),
              SizedBox(height: 8),
              Text(
                'What do you want to listen to today?',
                style: TextStyle(fontSize: 16, color: Color(0xffFFFFFF)),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      onTapOutside: (event) {
                        FocusScope.of(context).unfocus();
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xff19161d),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Color(0xffa9a4ad),
                          fontSize: 20,
                        ),
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: Color.fromARGB(255, 250, 250, 250),
                          size: 25,
                        ),
                        prefixIconConstraints: BoxConstraints(minWidth: 50),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff2ba2f7), width: 2),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 62,
                    height: 62,
                    decoration: BoxDecoration(
                      color: Color(0xff2ba2f7),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: IconButton(
                      icon: Center(
                        child: Icon(
                          Icons.tune_rounded,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                      onPressed: () {
                        // Handle filter button press
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 570),
              
            ],
          ),
        ),
      ),
    );
  }
}
