import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Payments"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.info_outline))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                    border: Border.all(color: Colors.grey[200]!)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Transaction Limit",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "A free limit up to which you will receive  \nthe online payments directly in to your banks ",
                        style: TextStyle(color: Colors.grey[600], fontSize: 16),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: LinearProgressIndicator(
                          color: Colors.blue[700],
                          minHeight: 7,
                          value: 0.3,
                          backgroundColor: Colors.grey[300],
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text('36,668 left out of ₹50,000',
                          style:
                              TextStyle(color: Colors.grey[500], fontSize: 15)),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 30,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue[700]),
                            onPressed: () {},
                            child: const Text(
                              "Increase Limit",
                              style: TextStyle(fontSize: 15),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Default Method',
                    style: TextStyle(fontSize: 17),
                  ),
                  Row(
                    children: [
                      Text(
                        'Online Payments',
                        style: TextStyle(fontSize: 17, color: Colors.grey[500]),
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.grey[500],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Payment Profile',
                    style: TextStyle(fontSize: 17),
                  ),
                  Row(
                    children: [
                      Text(
                        'Bank Account',
                        style: TextStyle(fontSize: 17, color: Colors.grey[500]),
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.grey[500],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 2,
                color: Colors.grey[200],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Payments Overview',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Text(
                        'Life Time',
                        style: TextStyle(fontSize: 17, color: Colors.grey[500]),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.grey[500],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 90,
                    width: 175,
                    decoration: BoxDecoration(
                        color: Colors.orange[700],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(7))),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Amount On Hold',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          Text(
                            '₹0',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 175,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 2, 192, 2),
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Amount Recieved',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          Text(
                            '₹13,332',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                wordSpacing: 2,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text('Transactions',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Chip(
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        "On hold",
                        style: TextStyle(color: Colors.grey[700], fontSize: 16),
                      ),
                    ),
                    labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                  ),
                  ChoiceChip(
                    selected: true,
                    onSelected: (value) {},
                    labelStyle: const TextStyle(color: Colors.white),
                    selectedColor: Colors.blue[800],
                    label: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        "Payouts (15)",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                  ),
                  Chip(
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        "Refund",
                        style: TextStyle(color: Colors.grey[700], fontSize: 16),
                      ),
                    ),
                    labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Row(children: [
                    SizedBox(
                        height: 60,
                        width: 50,
                        child: Image.network(
                            'https://m.media-amazon.com/images/I/41oLKl-rukL._UX679_.jpg')),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Order #1688068',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Jul 12, 02:06 PM',
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 15),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "₹799",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 5,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Successfull',
                                    style: TextStyle(color: Colors.grey[600]),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '₹799 deposited to: 58860200000135',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Divider(
                    thickness: 1,
                  )
                ],
              ),
              Column(
                children: [
                  Row(children: [
                    SizedBox(
                        height: 60,
                        width: 50,
                        child: Image.network(
                            'https://m.media-amazon.com/images/I/61bzvKukDhL._AC_UL320_.jpg')),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Order #1457741',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Apr 26, 07:47 AM',
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 15),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "₹397.4",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 5,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Successfull',
                                    style: TextStyle(color: Colors.grey[600]),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '₹397.4 deposited to: 58860200000135',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Divider(
                    thickness: 1,
                  )
                ],
              ),
              Column(
                children: [
                  Row(children: [
                    SizedBox(
                        height: 60,
                        width: 50,
                        child: Image.network(
                            'https://m.media-amazon.com/images/I/61jQiWRlLAL._AC_UL320_.jpg')),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Order #16880235',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Aug 08, 02:06 PM',
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 15),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "₹686.42",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 5,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Successfull',
                                    style: TextStyle(color: Colors.grey[600]),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '₹686.42 deposited to: 58860200000135',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Divider(
                    thickness: 1,
                  )
                ],
              ),
              Column(
                children: [
                  Row(children: [
                    SizedBox(
                        height: 60,
                        width: 50,
                        child: Image.network(
                            'https://m.media-amazon.com/images/I/71HlCrnS7DL._AC_UL320_.jpg')),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Order #14577765',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'May 30, 07:47 AM',
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 15),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "₹1123",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 5,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Successfull',
                                    style: TextStyle(color: Colors.grey[600]),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '₹1123 deposited to: 58860200000135',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Divider(
                    thickness: 1,
                  )
                ],
              ),
              Column(
                children: [
                  Row(children: [
                    SizedBox(
                        height: 60,
                        width: 50,
                        child: Image.network(
                            'https://m.media-amazon.com/images/I/61p21cELnEL._AC_UL320_.jpg')),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Order #14577224',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Jan 29, 07:57 PM',
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 15),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "₹1722.75",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 5,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Successfull',
                                    style: TextStyle(color: Colors.grey[600]),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '₹1722.75 deposited to: 58860200000135',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Divider(
                    thickness: 1,
                  )
                ],
              ),
              Column(
                children: [
                  Row(children: [
                    SizedBox(
                        height: 60,
                        width: 50,
                        child: Image.network(
                            'https://m.media-amazon.com/images/I/41oLKl-rukL._UX679_.jpg')),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Order #1688068',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Jul 12, 02:06 PM',
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 15),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "₹799",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 5,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Successfull',
                                    style: TextStyle(color: Colors.grey[600]),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '₹799 deposited to: 58860200000135',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Divider(
                    thickness: 1,
                  )
                ],
              ),
              Column(
                children: [
                  Row(children: [
                    SizedBox(
                        height: 60,
                        width: 50,
                        child: Image.network(
                            'https://m.media-amazon.com/images/I/61bzvKukDhL._AC_UL320_.jpg')),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Order #1457741',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Apr 26, 07:47 AM',
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 15),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "₹397.4",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 5,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Successfull',
                                    style: TextStyle(color: Colors.grey[600]),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '₹397.4 deposited to: 58860200000135',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Divider(
                    thickness: 1,
                  )
                ],
              ),
              Column(
                children: [
                  Row(children: [
                    SizedBox(
                        height: 60,
                        width: 50,
                        child: Image.network(
                            'https://m.media-amazon.com/images/I/61jQiWRlLAL._AC_UL320_.jpg')),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Order #16880235',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Aug 08, 02:06 PM',
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 15),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "₹686.42",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 5,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Successfull',
                                    style: TextStyle(color: Colors.grey[600]),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '₹686.42 deposited to: 58860200000135',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Divider(
                    thickness: 1,
                  )
                ],
              ),
              Column(
                children: [
                  Row(children: [
                    SizedBox(
                        height: 60,
                        width: 50,
                        child: Image.network(
                            'https://m.media-amazon.com/images/I/71HlCrnS7DL._AC_UL320_.jpg')),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Order #14577765',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'May 30, 07:47 AM',
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 15),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "₹1123",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 5,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Successfull',
                                    style: TextStyle(color: Colors.grey[600]),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '₹1123 deposited to: 58860200000135',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Divider(
                    thickness: 1,
                  )
                ],
              ),
              Column(
                children: [
                  Row(children: [
                    SizedBox(
                        height: 60,
                        width: 50,
                        child: Image.network(
                            'https://m.media-amazon.com/images/I/61p21cELnEL._AC_UL320_.jpg')),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Order #14577224',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Jan 29, 07:57 PM',
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 15),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "₹1722.75",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 5,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Successfull',
                                    style: TextStyle(color: Colors.grey[600]),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '₹1722.75 deposited to: 58860200000135',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Divider(
                    thickness: 1,
                  )
                ],
              ),
              Column(
                children: [
                  Row(children: [
                    SizedBox(
                        height: 60,
                        width: 50,
                        child: Image.network(
                            'https://m.media-amazon.com/images/I/41oLKl-rukL._UX679_.jpg')),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Order #1688068',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Jul 12, 02:06 PM',
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 15),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "₹799",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 5,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Successfull',
                                    style: TextStyle(color: Colors.grey[600]),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '₹799 deposited to: 58860200000135',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Divider(
                    thickness: 1,
                  )
                ],
              ),
              Column(
                children: [
                  Row(children: [
                    SizedBox(
                        height: 60,
                        width: 50,
                        child: Image.network(
                            'https://m.media-amazon.com/images/I/61bzvKukDhL._AC_UL320_.jpg')),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Order #1457741',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Apr 26, 07:47 AM',
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 15),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "₹397.4",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 5,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Successfull',
                                    style: TextStyle(color: Colors.grey[600]),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '₹397.4 deposited to: 58860200000135',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Divider(
                    thickness: 1,
                  )
                ],
              ),
              Column(
                children: [
                  Row(children: [
                    SizedBox(
                        height: 60,
                        width: 50,
                        child: Image.network(
                            'https://m.media-amazon.com/images/I/61jQiWRlLAL._AC_UL320_.jpg')),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Order #16880235',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Aug 08, 02:06 PM',
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 15),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "₹686.42",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 5,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Successfull',
                                    style: TextStyle(color: Colors.grey[600]),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '₹686.42 deposited to: 58860200000135',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Divider(
                    thickness: 1,
                  )
                ],
              ),
              Column(
                children: [
                  Row(children: [
                    SizedBox(
                        height: 60,
                        width: 50,
                        child: Image.network(
                            'https://m.media-amazon.com/images/I/71HlCrnS7DL._AC_UL320_.jpg')),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Order #14577765',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'May 30, 07:47 AM',
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 15),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "₹1123",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 5,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Successfull',
                                    style: TextStyle(color: Colors.grey[600]),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '₹1123 deposited to: 58860200000135',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Divider(
                    thickness: 1,
                  )
                ],
              ),
              Column(
                children: [
                  Row(children: [
                    SizedBox(
                        height: 60,
                        width: 50,
                        child: Image.network(
                            'https://m.media-amazon.com/images/I/61p21cELnEL._AC_UL320_.jpg')),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Order #14577224',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Jan 29, 07:57 PM',
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 15),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "₹1722.75",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 5,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Successfull',
                                    style: TextStyle(color: Colors.grey[600]),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '₹1722.75 deposited to: 58860200000135',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Divider(
                    thickness: 1,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
