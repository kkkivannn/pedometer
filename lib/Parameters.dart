// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, unused_element, avoid_print, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class param extends StatefulWidget {
  @override
  _paramState createState() => _paramState();
}

List<int> item = [];
var widget = 0;
int _focusedIndex = 1;

class _paramState extends State<param> {
  void _onItemFocus(int index) {
    setState(() {
      _focusedIndex = index;
    });
  }

  Widget _buildItemList(BuildContext context, int index) {
    if (index == item.length) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return Container(
      child: Row(
        children: [
          Container(
            alignment: Alignment(0.65, 0),
            child: Center(
              child: Text(
                '${widget}',
                style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 18,
                    color: Color(0xff5F6CFF)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    for (int i = 1; i < 176; i++) {
      widget = i;
      item.add(widget);
    }
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
                    Align(
                        alignment: Alignment(0.65, 0),
                        child: Container(
                          alignment: Alignment(0.65, 0),
                          child: Row(
                            children: [
                              Expanded(
                                  child: ScrollSnapList(
                                itemBuilder: _buildItemList,
                                itemCount: item.length,
                                itemSize: 5,
                                onReachEnd: () {
                                  print('Done!');
                                },
                                onItemFocus: _onItemFocus,
                                dynamicItemSize: true,
                              )),
                            ],
                          ),
                        ))
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
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
