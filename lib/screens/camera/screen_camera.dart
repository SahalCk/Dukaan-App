import 'dart:io';

import 'package:dukanapp/screens/camera/screen_image_view.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

ValueNotifier<List> db = ValueNotifier([]);

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  void initState() {
    getItemhelper();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Gallery'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue[800],
        onPressed: () {
          getImageFromCamera();
        },
        label: const Text(
          'Capture Image',
          style: TextStyle(fontSize: 18),
        ),
        icon: const Icon(
          Icons.photo_camera_outlined,
          size: 25,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ValueListenableBuilder(
                  valueListenable: db,
                  builder: (context, List data, child) {
                    return data.isEmpty
                        ? const Center(
                            child: Text(
                              'No Photos to show !',
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                        : GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                            ),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return ImageViewScreen(
                                      index: index,
                                    );
                                  }));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          width: 1.5, color: Colors.blue[900]!),
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: FileImage(
                                              File(data[index].toString())))),
                                ),
                              );
                            },
                            itemCount: db.value.length,
                          );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> getImageFromCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) {
      return;
    } else {
      Directory? directory = await getExternalStorageDirectory();
      File imagePath = File(image.path);
      await imagePath.copy('${directory!.path}/${DateTime.now()}.jpg');
      getItems(directory);
    }
  }

  Future<void> getItemhelper() async {
    Directory? directory = await getExternalStorageDirectory();
    getItems(directory!);
  }

  getItems(Directory directory) async {
    final listDir = await directory.list().toList();
    db.value.clear();
    for (var i = listDir.length - 1; i >= 0; i--) {
      if (listDir[i].path.substring(
              (listDir[i].path.length - 4), (listDir[i].path.length)) ==
          '.jpg') {
        db.value.add(listDir[i].path);
        db.notifyListeners();
      }
    }
  }
}
