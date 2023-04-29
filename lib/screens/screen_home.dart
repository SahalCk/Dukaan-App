import 'package:dukanapp/screens/screen_additional_info.dart';
import 'package:dukanapp/screens/camera/screen_camera.dart';
import 'package:dukanapp/screens/screen_catalogue.dart';
import 'package:dukanapp/screens/screen_dukan_premium.dart';
import 'package:dukanapp/screens/screen_manage_store.dart';
import 'package:dukanapp/screens/screen_orders.dart';
import 'package:dukanapp/screens/screen_payments.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.home),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return const CameraScreen();
                }));
              },
              icon: const Icon(Icons.photo_camera))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return AdditionalInfo();
                      }));
                    },
                    child: const Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      elevation: 4,
                      child: SizedBox(
                        height: 70,
                        width: 150,
                        child: Center(
                          child: Text(
                            'Additional Info',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 70, 70, 70)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return const ManageStore();
                      }));
                    },
                    child: const Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      elevation: 4,
                      child: SizedBox(
                        height: 70,
                        width: 150,
                        child: Center(
                          child: Text(
                            'Manage Store',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 70, 70, 70)),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return const PaymentScreen();
                      }));
                    },
                    child: const Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      elevation: 4,
                      child: SizedBox(
                        height: 70,
                        width: 150,
                        child: Center(
                          child: Text(
                            'Payments',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 70, 70, 70)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return const DukanPremium();
                      }));
                    },
                    child: const Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      elevation: 4,
                      child: SizedBox(
                        height: 70,
                        width: 150,
                        child: Center(
                          child: Text(
                            'Dukaan Premium',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 70, 70, 70)),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return const OrderScreen();
                      }));
                    },
                    child: const Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      elevation: 4,
                      child: SizedBox(
                        height: 70,
                        width: 150,
                        child: Center(
                          child: Text(
                            'Orders',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 70, 70, 70)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return const CatalogueScreen();
                      }));
                    },
                    child: const Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      elevation: 4,
                      child: SizedBox(
                        height: 70,
                        width: 150,
                        child: Center(
                          child: Text(
                            'Catalogue',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 70, 70, 70)),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
