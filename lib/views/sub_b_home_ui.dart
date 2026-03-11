import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/model/hotline.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubBHomeUi extends StatefulWidget {
  const SubBHomeUi({super.key});

  @override
  State<SubBHomeUi> createState() => _SubBHomeUiState();
}

List<String> imgHotLine = [
  'assets/images/b01.png',
  'assets/images/b02.png',
  'assets/images/b03.png',
  'assets/images/b04.png',
  'assets/images/b05.png',
  'assets/images/b06.jpg',
  'assets/images/b07.png',
  'assets/images/b08.png',
];

List<Hotline> hotLine = [
  Hotline(
    name: 'เหตุด่วนเหตุร้าย',
    phone: '191',
    image1: 'assets/images/b01.png',
  ),
  Hotline(
    name: 'แจ้งไฟไหม้สัตว์เข้าบ้าน',
    phone: '199',
    image1: 'assets/images/b02.png',
  ),
  Hotline(name: 'สายด่วนรถหาย', phone: '1192', image1: 'assets/images/b01.png'),
  Hotline(
    name: 'อุบัติเหตุทางน้ำ',
    phone: '1196',
    image1: 'assets/images/b03.png',
  ),
  Hotline(name: 'แจ้งคนหาย', phone: '1300', image1: 'assets/images/b04.png'),
  Hotline(
    name: 'ศุนย์ปลอดภัยคมนาคม',
    phone: '1356',
    image1: 'assets/images/b05.png',
  ),
  Hotline(
    name: 'หน่วยแพทย์กู้ชีพ',
    phone: '1554',
    image1: 'assets/images/b06.jpg',
  ),
  Hotline(name: 'ศูนย์เอราวัณ', phone: '1646', image1: 'assets/images/b07.png'),
  Hotline(
    name: 'เจ็บป่วยฉุกเฉิน',
    phone: '1669',
    image1: 'assets/images/b08.png',
  ),
];

class _SubBHomeUiState extends State<SubBHomeUi> {
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
              'อุบัติเหตุ',
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
                'assets/images/subB.png',
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
