import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/model/hotline.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubCHomeUi extends StatefulWidget {
  const SubCHomeUi({super.key});

  @override
  State<SubCHomeUi> createState() => _SubCHomeUiState();
}

List<String> imgHotLine = [
  'assets/images/c01.png',
  'assets/images/c02.png',
  'assets/images/c03.jpg',
  'assets/images/c04.jpg',
  'assets/images/c05.png',
  'assets/images/c06.png',
  'assets/images/c07.png',
  'assets/images/c08.jpg',
  'assets/images/c09.jpg',
  'assets/images/c10.png',
  'assets/images/c11.png',
  'assets/images/c12.png',
  'assets/images/c13.png',
  'assets/images/c14.jpg',
  'assets/images/c15.png',
  'assets/images/c16.png',
];

List<Hotline> hotLine = [
  Hotline(
    name: 'ธนาคารกรุงเทพ',
    phone: '1333',
    image1: 'assets/images/c01.png',
  ),
  Hotline(
    name: 'ธนาคารอาคารสงเคราะห์',
    phone: '02-645-9000',
    image1: 'assets/images/c02.png',
  ),
  Hotline(name: 'ธนาคารออมสิน', phone: '1115', image1: 'assets/images/c03.jpg'),
  Hotline(
    name: 'ธนาคารไทยพาณิชย์',
    phone: '02-777-7777',
    image1: 'assets/images/c04.jpg',
  ),
  Hotline(
    name: 'ธนาคารกสิกรไทย',
    phone: '02-888-8888',
    image1: 'assets/images/c05.png',
  ),
  Hotline(
    name: 'ธนาคารเกียรตินาคินภัทร',
    phone: '02-165-5555',
    image1: 'assets/images/c06.png',
  ),
  Hotline(
    name: 'ธนาคารกรุงไทย',
    phone: '02-111-1111',
    image1: 'assets/images/c07.png',
  ),
  Hotline(
    name: 'ธนาคารไทยเครดิต',
    phone: '02-697-5454',
    image1: 'assets/images/c08.jpg',
  ),
  Hotline(
    name: 'ธนาคารกรุงศรีอยุธยา',
    phone: '1572',
    image1: 'assets/images/c09.jpg',
  ),
  Hotline(
    name: 'ธนาคารยูโอบี',
    phone: '02-285-1555',
    image1: 'assets/images/c10.png',
  ),
  Hotline(
    name: 'ธนาคารทหารไทยธนชาต',
    phone: '1428',
    image1: 'assets/images/c11.png',
  ),
  Hotline(
    name: 'ธนาคารทิสโก้',
    phone: '02-633-6000',
    image1: 'assets/images/c12.png',
  ),
  Hotline(
    name: 'ธนาคารซิตี้แบงก์',
    phone: '1588',
    image1: 'assets/images/c13.png',
  ),
  Hotline(
    name: 'ธนาคารอิสลามแห่งประเทศไทย',
    phone: '02-204-2766',
    image1: 'assets/images/c14.jpg',
  ),
  Hotline(
    name: 'ธนาคารแลนด์ แอนด์ เฮ้าส์',
    phone: '1327',
    image1: 'assets/images/c15.png',
  ),
  Hotline(
    name: 'ธนาคารซีไอเอ็มบี ไทย',
    phone: '02-626-7777',
    image1: 'assets/images/c16.png',
  ),
];

class _SubCHomeUiState extends State<SubCHomeUi> {
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
              'ธนาคาร',
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
                'assets/images/subC.png',
                width: 150,
                height: 125,
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
