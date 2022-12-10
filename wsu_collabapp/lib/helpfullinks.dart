import 'package:flutter/material.dart';
class HelpfulLinks extends StatefulWidget {
  const HelpfulLinks({super.key});

  @override
  State<HelpfulLinks> createState() => _HelpfulLinksState();
}

class _HelpfulLinksState extends State<HelpfulLinks> {
  bool selected = false;

  List<String> text1 = [];
  List<String> text2 = [];
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Helpful Links"),
          backgroundColor: const Color.fromARGB(255, 7, 90, 158),
        ),
        
        body: Container(
          decoration: const BoxDecoration(color: Colors.white12),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  controller: _controller,
                ),
                TextFormField(
                  controller: _controller2,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      if (_controller.text.isNotEmpty &&
                          _controller2.text.isNotEmpty) {
                        text1.add(
                          _controller.text,
                        );
                        text2.add(
                          _controller2.text,
                        );
                        _controller.clear();
                        _controller2.clear();
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Input Text is empty"),
                        ));
                      }
                    });
                  },
                  child: const Text("Add Link"),
                ),
                
                Row(
                   children: <Widget>[Flexible(
                    child: Text(text1.isNotEmpty ? text1.toString() : ""),
                  ),
                     Flexible(
                  child: Text(text2.isNotEmpty ? text2.toString() : ""),
                  ),



                  ],
                ),
              ]),
            


        ));
  }
}
