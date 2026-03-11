import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/views/about_ui.dart';
import 'package:flutter_thai_hotline_app/views/sub_a_home_ui.dart';
import 'package:flutter_thai_hotline_app/views/sub_b_home_ui.dart';
import 'package:flutter_thai_hotline_app/views/sub_c_home_ui.dart';
import 'package:flutter_thai_hotline_app/views/sub_d_home_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  @override
  int barItemIndex = 0;

  List showUI = [SubAHomeUi(), SubBHomeUi(), SubCHomeUi(), SubDHomeUi()];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'สายด่วน THAILAND',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.grey[300],
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutUi()),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (paramValue) {
          setState(() {
            barItemIndex = paramValue;
          });
        },
        currentIndex: barItemIndex,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'การเดินทาง'),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'อุบัติเหตุ-เหตุฉุกเฉิน',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'ธนาคาร'),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'สาธารณูปโภค',
          ),
        ],
      ),
      body: showUI[barItemIndex],
    );
  }
}
