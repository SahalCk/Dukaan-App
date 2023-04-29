import 'package:dukanapp/models/options_model.dart';
import 'package:flutter/material.dart';

ValueNotifier isSwitched = ValueNotifier(false);

class AdditionalInfo extends StatelessWidget {
  AdditionalInfo({super.key});

  List<OptionsModel> options = [
    OptionsModel(
        optionicon: const Icon(
          Icons.share_outlined,
          size: 28,
        ),
        optionname: "Share Dukaan App",
        trailingwidget: const Icon(Icons.navigate_next)),
    OptionsModel(
        optionicon: const Icon(Icons.chat_bubble_outline, size: 28),
        optionname: "Change Language",
        trailingwidget: const Icon(Icons.navigate_next)),
    OptionsModel(
      optionicon: const Icon(Icons.chat_outlined, size: 28),
      optionname: "Whatsapp Chat Support",
      trailingwidget: ValueListenableBuilder(
        builder: (context, values, child) {
          return Switch(
              value: isSwitched.value,
              onChanged: (value) {
                isSwitched.value = value;
              });
        },
        valueListenable: isSwitched,
      ),
    ),
    OptionsModel(
        optionicon: const Icon(Icons.lock_outline, size: 28),
        optionname: "Privacy Policy"),
    OptionsModel(
        optionicon: const Icon(Icons.star_border_outlined, size: 28),
        optionname: "Rate Us"),
    OptionsModel(
        optionicon: const Icon(
          Icons.exit_to_app_outlined,
          size: 28,
        ),
        optionname: "Sign Out")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Additional Information"),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: options[index].optionicon,
                  title: Text(
                    options[index].optionname,
                    style: const TextStyle(fontSize: 18),
                  ),
                  trailing: options[index].trailingwidget,
                );
              },
              itemCount: options.length,
            ),
          ),
          Column(
            children: const [
              Text(
                'Version',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 151, 151, 151)),
              ),
              Text(
                '2.4.2',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 75, 75, 75)),
              ),
              SizedBox(
                height: 15,
              )
            ],
          )
        ],
      ),
    );
  }
}
