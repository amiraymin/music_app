import 'package:flutter/material.dart';

class AddPlaylistBottom extends StatelessWidget {
  const AddPlaylistBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color(0xff120f16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              "Create New Playlist",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 255, 255, 255)),
              
            ),
            SizedBox(height: 20),
            TextFormField(
            
              onTapOutside: (event) {
                FocusScope.of(context).unfocus();
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xff19161d),
                hintText: 'Song Name',
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                ),

                prefixIconConstraints: BoxConstraints(minWidth: 70),
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
            SizedBox(height: 35,),
            
            Row(
              children: [
                SizedBox(width: 5,),
            SizedBox(
                  height: 70,
                  width: 180,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      backgroundColor: const WidgetStatePropertyAll(
                        Color(0xff211e25),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Cancel",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 25
                        
                      ),
                    ),
                  ),
                ),


                 SizedBox(width:15),

                SizedBox(
                  height: 70,
                  width: 180,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      backgroundColor: const WidgetStatePropertyAll(
                        Color(0xff2ba2f7),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Create",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 25
                        
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
