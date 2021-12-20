import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          'GUN LOBSTER APP',
          style: TextStyle(fontSize: 20),
        )),
        body: ListView(
          children: [
            lobster(),
            text(),
            me(),
            name(),
            card1(),
            text1(),
            text2()
          ],
        ));
  }

  Container text2() {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 10, 30, 20),
      child: Column(
        children: const [
          Text(
                'ใครว่าทำเมนูล็อบสเตอร์นั้นไม่สามารถทำได้ที่บ้าน จิ๋วหิวโซคนนี้ขอคาน! เพราะวันนี้จะมาชวนเพื่อน ๆ เข้าครัวทำเมนู “ล็อบสเตอร์อบชีส” ที่บ้านกันแบบง่าย ๆ และไม่ต้องเตรียมล็อบสเตอร์ให้วุ่นวาย ส่วนซอสก็สามารถทำได้ไม่ยาก งานนี้รับรองว่าเด็ดไม่แพ้ร้านเลยล่ะจ้า ',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),   
        ],
      ),
    );
  }

  Row text1() {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 20),
            child: Divider(
              thickness: 2,
              color: Colors.grey[500],
            ),
          ),
        ),

        const Text('เกริ่นสักหน่อย',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),

        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 20),
            child: Divider(
              thickness: 2,
              color: Colors.grey[500],
            ),
          ),
        ),  
      ],
    );
  }


  SizedBox lobster() {
    return SizedBox(
      width: 200,
      height: 200,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: new AssetImage('images/lobster_cover.jpg')),
        ),
      ),
    );
  }


  Container text() {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: Column(
        children: [
          Text(
            'วิธีทำ “ล็อบสเตอร์อบชีส” เมนูอาหารฝรั่งทำง่ายแบบไม่ง้อร้าน!',
            style: TextStyle(
              color: Colors.orangeAccent[400],
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'เนื้อล็อบสเตอร์เด้ง ๆ โปะซอสเข้มข้นและชีสเน้น ๆ กับเมนู “ล็อบสเตอร์อบชีส” ที่มาพร้อมวิธีทำที่ทำตามได้ไม่ยาก พร้อมแล้วตามมาเข้าครัวกันเลย! ',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }


  Widget me() {
    return CircleAvatar(
      radius: 55,
      backgroundColor: Colors.lightGreen[200],
      child: CircleAvatar(
        radius: 50,
        backgroundImage: NetworkImage(
            'https://scontent.fhdy2-1.fna.fbcdn.net/v/t1.6435-9/105676904_2663837873883087_7724817089224317382_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHYHryMctC0l5lFEtqFrTtZ0u7ng1ioot3S7ueDWKii3VSpK_ljvOP5hjoJQjjY2_TQOAqv5RETzC_Xsdnz3rZd&_nc_ohc=93X30ew5ZCsAX_irOD4&_nc_ht=scontent.fhdy2-1.fna&oh=00_AT_h9DYWJlv2Z7y2xHKEplKJO4K8RyK6p-TRfuXyI7mjbw&oe=61E6C297'),
      ),
    );
  }


  Container card1() {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Card(
        color: Colors.orange[200],
        child: Row(
          children: [
            c1(),
            c2(),
            c3(),
            c4(),
          ],
        ),
      ),
    );
  }


  Widget c4() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 9, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.user,
              color: Colors.green,
            ),
            Text(
              'สำหรับ',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '5 เสิร์ฟ',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget c3() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 9, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.gripfire,
              color: Colors.red,
            ),
            Text(
              'แคลอรี่',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '300 Kcal/เสิร์ฟ',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget c2() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 9, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.utensils,
              color: Colors.orange,
            ),
            Text(
              'เวลาปรุง',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '50 นาที',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget c1() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 9, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.stopwatch,
              color: Colors.blue,
            ),
            Text(
              'เวลาเตรียม',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '10 นาที',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


Widget name() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('20 ธ.ค. 2564 >> โดย เชฟกัน ตามารถไฟไหหลำ',
          style: GoogleFonts.itim())
    ],
  );
}
