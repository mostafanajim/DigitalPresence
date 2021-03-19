import 'package:digital_presence/Blog.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'nm_box.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

Facebook() async {
  const url = 'http://www.facecbook.com/mostafa.najim.50';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Twitter() async {
  const url = 'http://www.twitter.com/najim_mostafa';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Instagram() async {
  const url = 'http://www.instagram.com/mostafamnajim';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Youtube() async {
  const url = 'https://youtube.com/mostafanajim';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Linkedin() async {
  const url = 'https://www.linkedin.com/in/mostafa-najim-69030488/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Blog() async {
  const url = 'https://mostafanajim.wordpress.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Hogwarts() async {
  const url = 'https://hogwartsofengineers.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

PG() async {
  const url = 'https://pioneersgate.tech/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

BAU() async {
  const url = 'https://bau.edu.lb/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

AKU() async {
  const url = 'https://aku.edu.lb/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: TextTheme(body1: TextStyle(color: fCL))),
      home: MainCard(),
    );
  }
}

class MainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mC,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    //TextButton(child: NMButton(icon: Icons.arrow_back)),
                    // NMButton(icon: Icons.menu),
                    AvatarImage(),
                    SizedBox(width: 5),
                    Column(
                      children: <Widget>[
                        Text(
                          'Mostafa Najim',
                          style: TextStyle(
                              color: Color(0xFF3F61A8),
                              fontSize: 30,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Career Developer',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22),
                        ),
                      ],
                    ),
                    SizedBox(width: 25),
                  ],
                ),

                SizedBox(height: 25),
                Text(
                  'Let\'s Connect',
                  style: TextStyle(
                      color: Color(0xFF3F61A8),
                      fontSize: 30,
                      fontWeight: FontWeight.w100),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                        onPressed: Facebook,
                        child: NMButton(icon: FontAwesomeIcons.facebookF)),
                    SizedBox(width: 30),
                    TextButton(
                        onPressed: Twitter,
                        child: NMButton(icon: FontAwesomeIcons.twitter)),
                    SizedBox(width: 30),
                    TextButton(
                        onPressed: Instagram,
                        child: NMButton(icon: FontAwesomeIcons.instagram)),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                        onPressed: Linkedin,
                        child: NMButton(icon: FontAwesomeIcons.linkedin)),
                    SizedBox(width: 30),
                    TextButton(
                        onPressed: Youtube,
                        child: NMButton(icon: FontAwesomeIcons.youtube)),
                    SizedBox(width: 30),
                    TextButton(
                        //
                        onPressed: Blog,
                        // onPressed: () {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => WebViewExample()),
                        //   );
                        // },
                        child: NMButton(icon: FontAwesomeIcons.wordpress)),
                  ],
                ),
                SizedBox(height: 10),
                //Spacer(),
                Text(
                  'Present Work',
                  style: TextStyle(
                      color: Color(0xFF3F61A8),
                      fontSize: 30,
                      fontWeight: FontWeight.w100),
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: TextButton(
                        onPressed: Hogwarts,
                        child: CButton(image: 'assets/images/Hogwarts.png'),
                      ),
                    ),
                    SizedBox(width: 15),
                    SocialBox(
                        icon: FontAwesomeIcons.userAlt,
                        count: 'Hogwarts of Engineers',
                        category: 'Founder'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: TextButton(
                        onPressed: Hogwarts,
                        child: CButton(image: 'assets/images/pg.png'),
                      ),
                    ),
                    SizedBox(width: 15),
                    SocialBox(
                        icon: FontAwesomeIcons.userAlt,
                        count: 'Pioneers Gate',
                        category: 'Project Manager'),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: TextButton(
                        onPressed: Hogwarts,
                        child: CButton(image: 'assets/images/bau.png'),
                      ),
                    ),
                    SizedBox(width: 15),
                    SocialBox(
                        icon: FontAwesomeIcons.userAlt,
                        count: 'Beirut Arab University',
                        category: 'Mechatronics Instructor'),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: TextButton(
                        onPressed: Hogwarts,
                        child: CButton(image: 'assets/images/aku.png'),
                      ),
                    ),
                    SizedBox(width: 15),
                    SocialBox(
                        icon: FontAwesomeIcons.userAlt,
                        count: 'Al-Kafaàt University',
                        category: 'Robotics & AI Lecturer'),
                  ],
                ),
                SizedBox(height: 10),

                SizedBox(height: 35),
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.07,
            minChildSize: 0.07,
            maxChildSize: 1,
            builder: (BuildContext context, scroll) {
              return Container(
                decoration: nMbox_page,
                child: ListView(
                  controller: scroll,
                  children: <Widget>[
                    Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 5),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(Icons.arrow_upward, color: fCL),
                                Text(
                                  'Previous Work',
                                  style: TextStyle(
                                      color: Color(0xFF3F61A8),
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700),
                                ),
                                Icon(Icons.arrow_upward, color: fCL),
                              ]),
                          SizedBox(height: 35),
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    SocialBox(
                                        icon: FontAwesomeIcons.userAlt,
                                        count: 'Advanced Building Technologies',
                                        category: 'BMS Engineer - 4 yrs'),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: <Widget>[
                                    SocialBox(
                                        icon: FontAwesomeIcons.userAlt,
                                        count: 'Developed Technology Corp.',
                                        category:
                                            'Robotics Academy Manager - 1 yr 2 mos'),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: <Widget>[
                                    SocialBox(
                                        icon: FontAwesomeIcons.userAlt,
                                        count: 'Ideation Invest S.A.L.',
                                        category:
                                            'Mechanical Design Engineer - 8 mos'),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: <Widget>[
                                    SocialBox(
                                        icon: FontAwesomeIcons.userAlt,
                                        count: 'Makassed High School',
                                        category:
                                            'Science Fair Projects Supervisor - 2 yrs'),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: <Widget>[
                                    SocialBox(
                                        icon: FontAwesomeIcons.userAlt,
                                        count: 'VEX Robotics - Lebanon',
                                        category:
                                            'VEX Robotics Trainer - 6 yrs'),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: <Widget>[
                                    SocialBox(
                                        icon: FontAwesomeIcons.userAlt,
                                        count: 'TechnoFuture - Lebanon',
                                        category:
                                            'Event Organizer / Head of Judges - 5 yrs'),
                                  ],
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: 225,
                            padding: EdgeInsets.all(10),
                            decoration: nMbox_page_Invert,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.facebookF, color: fCL),
                                Icon(FontAwesomeIcons.twitter, color: fCL),
                                Icon(FontAwesomeIcons.instagram, color: fCL),
                                Icon(FontAwesomeIcons.whatsapp, color: fCL),
                              ],
                            ),
                          ),
                          SizedBox(height: 25),
                          FaIcon(
                            FontAwesomeIcons.copy,
                            color: Colors.pink.shade800,
                          ),
                          Text(
                            'Copy link',
                          ),
                          //wpblog(),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class SocialBox extends StatelessWidget {
  final IconData icon;
  final String count;
  final String category;

  const SocialBox({this.icon, this.count, this.category});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: nMboxInvert,
        child: Row(
          children: <Widget>[
            FaIcon(icon, color: Color(0xFF3F61A8), size: 20),
            SizedBox(width: 8),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    count,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(width: 3),
                  Text(
                    category,
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}

class NMButton extends StatelessWidget {
  final IconData icon;
  const NMButton({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: nMbox,
      child: Icon(
        icon,
        color: Color(0xFF3F61A8),
      ),
    );
  }
}

class CButton extends StatelessWidget {
  final String image;
  const CButton({this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: Cbox,
      child: new Image.asset(
        image,
      ),
    );
  }
}

class AvatarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      padding: EdgeInsets.all(8),
      decoration: nMbox,
      child: Container(
        decoration: nMbox,
        padding: EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/p.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
