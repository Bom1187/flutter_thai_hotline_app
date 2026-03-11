import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/model/hotline.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubAHomeUi extends StatefulWidget {
  const SubAHomeUi({super.key});

  @override
  State<SubAHomeUi> createState() => _SubAHomeUiState();
}

List<String> imgHotLine = [
  'assets/images/a01.jpg',
  'assets/images/a02.png',
  'assets/images/a03.jpg',
  'assets/images/a04.jpg',
  'assets/images/a05.png',
  'assets/images/a06.png',
  'assets/images/a07.png',
  'assets/images/a08.png',
  'assets/images/a09.png',
];

List<Hotline> hotLine = [
  Hotline(
    name: 'กรมทางหลวงชนบท',
    phone: '1146',
    image1: 'assets/images/a01.jpg',
  ),
  Hotline(
    name: 'ตำรวจท่องเที่ยว',
    phone: '1155',
    image1: 'assets/images/a02.png',
  ),
  Hotline(name: 'ตำรวจทางหลวง', phone: '1193', image1: 'assets/images/a03.jpg'),
  Hotline(name: 'ข้อมูลจราจร', phone: '1197', image1: 'assets/images/a04.jpg'),
  Hotline(name: 'ขสมก.', phone: '1348', image1: 'assets/images/a05.png'),
  Hotline(name: 'บขส.', phone: '1490', image1: 'assets/images/a06.png'),
  Hotline(
    name: 'เส้นทางบนทางด่วน',
    phone: '1543',
    image1: 'assets/images/a07.png',
  ),
  Hotline(name: 'กรมทางหลวง', phone: '1586', image1: 'assets/images/a08.png'),
  Hotline(
    name: 'การรถไฟแห่งประเทศไทย',
    phone: '1690',
    image1: 'assets/images/a09.png',
  ),
];

class _SubAHomeUiState extends State<SubAHomeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Text(
              'สายด่วน',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'การเดินทาง',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/subA.png',
                width: 150,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemCount: imgHotLine.length,

                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 6,
                    ),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey.shade400),
                    ),
                    child: ListTile(
                      onTap: () {},
                      leading: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 2),
                        ),
                        child: Image.asset(
                          hotLine[index].image1!,
                          width: 30,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        hotLine[index].name!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(hotLine[index].phone!),
                      trailing: FaIcon(
                        FontAwesomeIcons.phone,
                        color: Colors.grey[600],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
