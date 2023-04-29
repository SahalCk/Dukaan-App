import 'package:flutter/material.dart';

class DukanPremium extends StatelessWidget {
  const DukanPremium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 25,
              color: Colors.blue[700],
            ),
            Container(
              color: Colors.blue[700],
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        )),
                    const SizedBox(
                      width: 50,
                    ),
                    const Text(
                      'Dukaan Premium',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Container(
                    height: 100,
                    color: Colors.blue[700],
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                          height: 200,
                          width: 360,
                          child: Card(
                            elevation: 1,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.blue[700],
                                      radius: 25,
                                      child: const Icon(
                                        Icons.shopping_bag,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          const Text(
                                            'dukaan',
                                            style: TextStyle(
                                                height: 0,
                                                fontSize: 32,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          Text(
                                            'PREMIUM',
                                            style: TextStyle(
                                                height: 1,
                                                fontSize: 14,
                                                color: Colors.blue[700],
                                                fontWeight: FontWeight.w700),
                                          )
                                        ])
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text(
                                  'Get Dukaan Premium for just\n₹4999/Year',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      wordSpacing: 1,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'All the advance features of scaling your\nbusiness',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Features',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue[700],
                        radius: 28,
                        child: const CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.language,
                            size: 35,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Custom domain name',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Get your own custom domain and build\nyour brand on the internet',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 14),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue[700],
                        radius: 28,
                        child: const CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.verified_outlined,
                            size: 35,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Verified seller badge',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Get green verified badge under your\nstore name and build trust',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 14),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue[700],
                        radius: 28,
                        child: const CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.laptop_chromebook_rounded,
                            size: 35,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Verified seller badge',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Access all the exclusive premium\nfeatures on Dukaan for PC',
                            overflow: TextOverflow.visible,
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 14),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue[700],
                        radius: 28,
                        child: const CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.headset_mic_outlined,
                            size: 35,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Priority support',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Get your questions resolved with our\npriority customer support',
                            overflow: TextOverflow.visible,
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 14),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 3,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: const [
                  Text('What is dukaan premium?',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Stack(alignment: Alignment.center, children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                      'https://i.ytimg.com/vi/FY4kYTDL67g/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAlUOkWHVzDg_8F9-LvgWiCJdwy5w'),
                ),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.network(
                      'https://www.freepnglogos.com/uploads/youtube-play-button-png/youtube-play-button-png-download-clip-art-clip-art-clipart-library-17.png'),
                )
              ]),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              thickness: 3,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Frequently asked questions',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 192, 191, 191)),
                      ),
                    ),
                    child: const ExpansionTile(
                      title: Text(
                          'What types of businesses can use Dukaan Premium?'),
                      children: [
                        Text(
                          'Dukaan caters to a wide variety of sellers.Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online Dukaan is the perfect platform for you ',
                          style: TextStyle(
                              fontSize: 14,
                              height: 1.2,
                              color: Color.fromARGB(255, 138, 138, 138)),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 192, 191, 191)),
                      ),
                    ),
                    child: const ExpansionTile(
                      title: Text('What is your refund policy?'),
                      children: [
                        Text(
                          'Dukaan caters to a wide variety of sellers.Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online Dukaan is the perfect platform for you ',
                          style: TextStyle(
                              fontSize: 14,
                              height: 1.2,
                              color: Color.fromARGB(255, 138, 138, 138)),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 192, 191, 191)),
                      ),
                    ),
                    child: const ExpansionTile(
                      title: Text(
                          'Will there be an automatic charge after the paid trial?'),
                      children: [
                        Text(
                          'Dukaan caters to a wide variety of sellers.Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online Dukaan is the perfect platform for you ',
                          style: TextStyle(
                              fontSize: 14,
                              height: 1.2,
                              color: Color.fromARGB(255, 138, 138, 138)),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 192, 191, 191)),
                      ),
                    ),
                    child: const ExpansionTile(
                      title: Text('What payment methods do you offer?'),
                      children: [
                        Text(
                          'Dukaan caters to a wide variety of sellers.Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online Dukaan is the perfect platform for you ',
                          style: TextStyle(
                              fontSize: 14,
                              height: 1.2,
                              color: Color.fromARGB(255, 138, 138, 138)),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 192, 191, 191)),
                      ),
                    ),
                    child: const ExpansionTile(
                      title: Text('What happens when my free trial ends?'),
                      children: [
                        Text(
                          'Dukaan caters to a wide variety of sellers.Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online Dukaan is the perfect platform for you ',
                          style: TextStyle(
                              fontSize: 14,
                              height: 1.2,
                              color: Color.fromARGB(255, 138, 138, 138)),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  const ExpansionTile(
                    title: Text('What are the terms for the custom domain?'),
                    children: [
                      Text(
                        'Dukaan caters to a wide variety of sellers.Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online Dukaan is the perfect platform for you ',
                        style: TextStyle(
                            fontSize: 14,
                            height: 1.2,
                            color: Color.fromARGB(255, 138, 138, 138)),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              thickness: 3,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: const [
                  Text('Need help? Get in touchs',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey[300]!, width: 2),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: Colors.white),
                      width: 165,
                      height: 85,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat_bubble_outline_rounded,
                            size: 30,
                            color: Colors.grey[900],
                          ),
                          Text(
                            'Live Chat',
                            style: TextStyle(
                                color: Colors.grey[900], fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!, width: 2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: Colors.white),
                    width: 165,
                    height: 85,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.local_phone_outlined,
                          size: 30,
                          color: Colors.grey[900],
                        ),
                        Text(
                          'Phone Call',
                          style:
                              TextStyle(color: Colors.grey[900], fontSize: 18),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 180,
                    height: 45,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Select Domain',
                          style:
                              TextStyle(fontSize: 19, color: Colors.blue[700]),
                        )),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(180, 45),
                          backgroundColor: Colors.blue[700],
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      onPressed: () {},
                      child: const Text(
                        'Get Premium',
                        style: TextStyle(fontSize: 19),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
