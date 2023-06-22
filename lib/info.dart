import 'dart:ui';
import 'package:flutter/material.dart';
import 'home.dart';

class Information extends StatelessWidget {
  var name;
  var image;
  var text;
  Information({required this.name, required this.image, required this.text});
  @override
  Widget build(BuildContext context) {
    var widget;
    return Scaffold(
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: Colors.blue.withOpacity(0.3),
              title: Text('TAPA'),
              elevation: 0.0,
              actions: [
                PopupMenuButton(
                    itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Text('Share the app'),
                          ),
                          PopupMenuItem(
                            child: Text('Exit'),
                            textStyle: TextStyle(color: Colors.red),
                            onTap: () {
                              Navigator.pop(context);
                              setState() {}
                            },
                          ),
                        ])
              ],
            ),
          ),
        ),
        preferredSize: Size(
          double.infinity,
          56.0,
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: GestureDetector(
                child: Image.asset(
                  image,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FullScreen(img: image),
                      ));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.5),
                    Colors.black.withOpacity(0.2),
                  ],
                  begin: AlignmentDirectional.topEnd,
                  end: AlignmentDirectional.bottomStart,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              alignment: Alignment.center,
              width: double.infinity,
              child: Text(name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              padding: EdgeInsets.all(10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.white.withOpacity(0.5),
                        Colors.black.withOpacity(0.2),
                      ],
                      begin: AlignmentDirectional.topStart,
                      end: AlignmentDirectional.bottomEnd,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FullScreen extends StatelessWidget {
  var img;
  FullScreen({required this.img});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: GestureDetector(
            child: Image.asset(img),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
