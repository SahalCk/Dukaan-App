import 'package:flutter/material.dart';

class ManageStore extends StatefulWidget {
  const ManageStore({super.key});

  @override
  State<ManageStore> createState() => _ManageStoreState();
}

class _ManageStoreState extends State<ManageStore> {
  int selected = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEAEA),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Manage Store'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: const Color.fromARGB(255, 233, 231, 231)),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  width: 175,
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFFF6600),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            width: 45,
                            height: 45,
                            child: const Icon(
                              Icons.campaign,
                              size: 30,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Expanded(
                          child: Center(
                            child: Text(
                              'Marketing Design',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: const Color.fromARGB(255, 233, 231, 231)),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  width: 175,
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(207, 57, 201, 59),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            width: 45,
                            height: 45,
                            child: const Icon(
                              Icons.currency_rupee_rounded,
                              size: 30,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Online \nPayment',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: const Color.fromARGB(255, 233, 231, 231)),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  width: 175,
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 211, 173, 60),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            width: 45,
                            height: 45,
                            child: const Icon(
                              Icons.discount_outlined,
                              size: 30,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Expanded(
                          child: Center(
                            child: Text(
                              'Discount Coupons',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: const Color.fromARGB(255, 233, 231, 231)),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  width: 175,
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 51, 170, 134),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            width: 45,
                            height: 45,
                            child: const Icon(
                              Icons.people_alt_outlined,
                              size: 30,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'My\nCostumers',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  width: 175,
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFF6B6B6B),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            width: 45,
                            height: 45,
                            child: const Icon(
                              Icons.qr_code_scanner_outlined,
                              size: 30,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Store QR\nCode',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: const Color.fromARGB(255, 233, 231, 231)),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  width: 175,
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 129, 49, 190),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            width: 45,
                            height: 45,
                            child: const Icon(
                              Icons.payments_outlined,
                              size: 30,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Extra\nCharges',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: const Color.fromARGB(255, 233, 231, 231)),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    width: 175,
                    height: 120,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 3.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 161, 66, 137),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    width: 45,
                                    height: 45,
                                    child: const Icon(
                                      Icons.format_align_left_outlined,
                                      size: 30,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                  Container(
                                    width: 45,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 50, 167, 54),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          5,
                                        ),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        ' New',
                                        textWidthBasis: TextWidthBasis.parent,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                ]),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Order \nForm',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selected,
        onTap: (value) {
          setState(() {
            selected = value;
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grid_view,
            ),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.layers,
            ),
            label: 'Manage',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
            ),
            label: 'Account',
          ),
        ],
        iconSize: 30,
      ),
    );
  }
}
