// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, unused_element, avoid_print, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class param extends StatefulWidget {
  @override
  _paramState createState() => _paramState();
}

// List<int> item = List.generate(3, (int index) => index + 1, growable: false);
// const size = 250;
// List<int> widget = [size];
// int i = 50;
// var _focusedIndex;

class _paramState extends State<param> {
  // void _onItemFocus(int index) {
  //   setState(() {
  //     _focusedIndex = index;
  //   });
  // }

  // Widget _buildItemList(BuildContext context, int index) {
  //   for (int i = 0; i < widget.length; i++) {
  //     widget[i] = i + 1;
  //   }
  //   if (index == widget.length) {
  //     return Center(
  //       child: CircularProgressIndicator(),
  //     );
  //   }
  //   return Container(
  //     width: 25,
  //     child: Column(
  //       children: [
  //         Container(
  //           alignment: Alignment(0.65, 0),
  //           child: Center(
  //             child: Text(
  //               '${widget[i]}',
  //               style: TextStyle(
  //                   fontFamily: 'Gilroy',
  //                   fontSize: 18,
  //                   color: Color(0xff5F6CFF)),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment(0, 0.15),
              child: Container(
                height: 42,
                width: 343,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white),
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment(-0.80, 0),
                      child: Text(
                        'Какой у тебя рост?',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Gilroy2',
                            fontSize: 14),
                      ),
                    ),
                    // Align(
                    //     alignment: Alignment(0.65, 0),
                    //     child: Container(
                    //       width: 60,
                    //       height: 22,
                    //       child: Column(
                    //         children: [
                    //           Expanded(
                    //               child: ScrollSnapList(
                    //             itemBuilder: _buildItemList,
                    //             itemCount: widget.length,
                    //             itemSize: 25,
                    //             onReachEnd: () {
                    //               print('Done!');
                    //             },
                    //             onItemFocus: _onItemFocus,
                    //             dynamicItemSize: true,
                    //           )),
                    //         ],
                    //       ),
                    //     ))
                  ],
                ),
              )),
          Align(
              alignment: Alignment(0, 0.3),
              child: Container(
                height: 42,
                width: 343,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white),
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment(-0.80, 0),
                      child: Text(
                        "Какой у тебя вес?",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Gilroy2',
                            fontSize: 14),
                      ),
                    )
                  ],
                ),
              )),
          Align(
              alignment: Alignment(0, 0.45),
              child: Container(
                height: 42,
                width: 343,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white),
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment(-0.80, 0),
                      child: Text(
                        'Сколько тебе лет?',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Gilroy2',
                            fontSize: 14),
                      ),
                    ),
                    Align(
                        alignment: Alignment(0.8, 0),
                        child: SizedBox(
                          child: TextField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(),
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
