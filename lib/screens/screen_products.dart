import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  elevation: 1,
                  shadowColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 90,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.network(
                                      'https://m.media-amazon.com/images/I/8147AYDjuVL._AC_UL320_.jpg'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'Couch Potato | wo...',
                                      style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 1.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Icon(
                                      Icons.more_vert_rounded,
                                      color: Colors.grey[500],
                                    )
                                  ],
                                ),
                                const Text(
                                  '1 Piece',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                const Text(
                                  '₹799',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'In Stock',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    const SizedBox(
                                      width: 128,
                                    ),
                                    Switch(
                                        value: isSwitched,
                                        onChanged: (value) {
                                          setState(() {
                                            isSwitched = value;
                                          });
                                        })
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 66, 66, 66),
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share_outlined,
                              color: Colors.black,
                            ),
                            label: const Text(
                              'Share Product',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  elevation: 1,
                  shadowColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 90,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.network(
                                      'https://m.media-amazon.com/images/I/81rFGdvUs0L._AC_UL320_.jpg'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'Couch Potato | m...',
                                      style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 1.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    Icon(
                                      Icons.more_vert_rounded,
                                      color: Colors.grey[500],
                                    )
                                  ],
                                ),
                                const Text(
                                  '1 Piece',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                const Text(
                                  '₹889',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'In Stock',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    const SizedBox(
                                      width: 128,
                                    ),
                                    Switch(
                                        value: isSwitched,
                                        onChanged: (value) {
                                          isSwitched = value;
                                        })
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 66, 66, 66),
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share_outlined,
                              color: Colors.black,
                            ),
                            label: const Text(
                              'Share Product',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  elevation: 1,
                  shadowColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 90,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.network(
                                      'https://m.media-amazon.com/images/I/71Ui1Uz3S8S._AC_UL320_.jpg'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'Mug | Explore',
                                      style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 1.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 80,
                                    ),
                                    Icon(
                                      Icons.more_vert_rounded,
                                      color: Colors.grey[500],
                                    )
                                  ],
                                ),
                                const Text(
                                  '1 Piece',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                const Text(
                                  '₹1699',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'In Stock',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    const SizedBox(
                                      width: 128,
                                    ),
                                    Switch(
                                        value: isSwitched,
                                        onChanged: (value) {
                                          isSwitched = value;
                                        })
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 66, 66, 66),
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share_outlined,
                              color: Colors.black,
                            ),
                            label: const Text(
                              'Share Product',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  elevation: 1,
                  shadowColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 90,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.network(
                                      'https://m.media-amazon.com/images/I/61sYJlaT+OL._AC_UL320_.jpg'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'T-Shirt | men T-shi...',
                                      style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 1.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Icon(
                                      Icons.more_vert_rounded,
                                      color: Colors.grey[500],
                                    )
                                  ],
                                ),
                                const Text(
                                  '1 Piece',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                const Text(
                                  '₹799',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'In Stock',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    const SizedBox(
                                      width: 128,
                                    ),
                                    Switch(
                                        value: isSwitched,
                                        onChanged: (value) {
                                          isSwitched = value;
                                        })
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 66, 66, 66),
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share_outlined,
                              color: Colors.black,
                            ),
                            label: const Text(
                              'Share Product',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  elevation: 1,
                  shadowColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 90,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.network(
                                      'https://m.media-amazon.com/images/I/91gA190mNYL._AC_UL320_.jpg'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'Wallpaper | wallpa...',
                                      style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 1.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Icon(
                                      Icons.more_vert_rounded,
                                      color: Colors.grey[500],
                                    )
                                  ],
                                ),
                                const Text(
                                  '1 Piece',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                const Text(
                                  '₹799',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'In Stock',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    const SizedBox(
                                      width: 128,
                                    ),
                                    Switch(
                                        value: isSwitched,
                                        onChanged: (value) {
                                          isSwitched = value;
                                        })
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 66, 66, 66),
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share_outlined,
                              color: Colors.black,
                            ),
                            label: const Text(
                              'Share Product',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  elevation: 1,
                  shadowColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 90,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.network(
                                      'https://m.media-amazon.com/images/I/8147AYDjuVL._AC_UL320_.jpg'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'Couch Potato | wo...',
                                      style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 1.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Icon(
                                      Icons.more_vert_rounded,
                                      color: Colors.grey[500],
                                    )
                                  ],
                                ),
                                const Text(
                                  '1 Piece',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                const Text(
                                  '₹799',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'In Stock',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    const SizedBox(
                                      width: 128,
                                    ),
                                    Switch(
                                        value: isSwitched,
                                        onChanged: (value) {
                                          isSwitched = value;
                                        })
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 66, 66, 66),
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share_outlined,
                              color: Colors.black,
                            ),
                            label: const Text(
                              'Share Product',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  elevation: 1,
                  shadowColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 90,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.network(
                                      'https://m.media-amazon.com/images/I/8147AYDjuVL._AC_UL320_.jpg'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'Couch Potato | wo...',
                                      style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 1.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Icon(
                                      Icons.more_vert_rounded,
                                      color: Colors.grey[500],
                                    )
                                  ],
                                ),
                                const Text(
                                  '1 Piece',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                const Text(
                                  '₹799',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'In Stock',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    const SizedBox(
                                      width: 128,
                                    ),
                                    Switch(
                                        value: isSwitched,
                                        onChanged: (value) {
                                          isSwitched = value;
                                        })
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 66, 66, 66),
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share_outlined,
                              color: Colors.black,
                            ),
                            label: const Text(
                              'Share Product',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  elevation: 1,
                  shadowColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 90,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.network(
                                      'https://m.media-amazon.com/images/I/8147AYDjuVL._AC_UL320_.jpg'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'Couch Potato | wo...',
                                      style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 1.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Icon(
                                      Icons.more_vert_rounded,
                                      color: Colors.grey[500],
                                    )
                                  ],
                                ),
                                const Text(
                                  '1 Piece',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                const Text(
                                  '₹799',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'In Stock',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    const SizedBox(
                                      width: 128,
                                    ),
                                    Switch(
                                        value: isSwitched,
                                        onChanged: (value) {
                                          isSwitched = value;
                                        })
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 66, 66, 66),
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share_outlined,
                              color: Colors.black,
                            ),
                            label: const Text(
                              'Share Product',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
