import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/model/hotline.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubDHomeUi extends StatefulWidget {
  const SubDHomeUi({super.key});

  @override
  State<SubDHomeUi> createState() => _SubDHomeUiState();
}

List<String> imgHotLine = [
  'assets/images/d01.png',
  'assets/images/d02.png',
  'assets/images/d03.png',
  'assets/images/d04.png',
  'assets/images/d05.png',
  'assets/images/d06.png',
  'assets/images/d07.jpg',
  'assets/images/d08.jpg',
  'assets/images/d09.png',
];

List<Hotline> hotLine = [
  Hotline(
    name: 'การไฟฟ้านครหลวง',
    phone: '1130',
    image1: 'assets/images/d01.png',
  ),
  Hotline(
    name: 'การไฟฟ้าส่วนภูมิภาค',
    phone: '1129',
    image1: 'assets/images/d02.png',
  ),
  Hotline(
    name: 'การไฟฟ้าฝ่ายผลิต',
    phone: '1416',
    image1: 'assets/images/d03.png',
  ),
  Hotline(
    name: 'การประปานครหลวง',
    phone: '1125',
    image1: 'assets/images/d04.png',
  ),
  Hotline(
    name: 'การประปาส่วนภูมิภาค',
    phone: '1662',
    image1: 'assets/images/d09.png',
  ),
  Hotline(name: 'True', phone: '1242', image1: 'assets/images/d05.png'),
  Hotline(name: 'DTAC', phone: '1678', image1: 'assets/images/d06.png'),
  Hotline(name: 'AIS', phone: '1175', image1: 'assets/images/d07.jpg'),
  Hotline(name: 'TOT', phone: '1100', image1: 'assets/images/d08.jpg'),
];

class _SubDHomeUiState extends State<SubDHomeUi> {
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
              'สาธารณูปโภค',
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
                'assets/images/subD.png',
                width: 110,
                height: 80,
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
