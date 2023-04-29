import 'dart:io';

import 'package:dukanapp/screens/camera/screen_camera.dart';
import 'package:flutter/material.dart';

class ImageViewScreen extends StatelessWidget {
  int index;
  ImageViewScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image View'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          deletephoto(context);
        },
        child: const Icon(Icons.delete),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 340,
              width: 340,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 2),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: FileImage(File(db.value[index])))),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.5, color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 218, 231, 255),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    db.value[index],
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  confirmdelete(BuildContext context, int index) async {
    File file = File(db.value[index]);
    db.value.removeAt(index);
    file.deleteSync();
    db.notifyListeners();
  }

  void deletephoto(BuildContext ctx) {
    showDialog(
        context: ctx,
        builder: (ctx1) {
          return AlertDialog(
            title: const Text("Confirmation of delete"),
            content: const Text("Do you want to Delete this photo?"),
            actions: [
              TextButton(
                  onPressed: () {
                    confirmdelete(ctx, index);
                    Navigator.of(ctx1).pop();
                    Navigator.of(ctx).pop();
                  },
                  child: const Text("Yes")),
              TextButton(
                  onPressed: () {
                    Navigator.of(ctx1).pop();
                  },
                  child: const Text("No"))
            ],
          );
        });
  }
}
