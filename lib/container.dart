import 'package:flutter/material.dart';

import 'package:my_project/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';
double x = 0.0;
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splash(),
  ));
}

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  initState() {
    super.initState();
    x();
  }

  x() async {
    await Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (c) => myapp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        // پس زمینه: تصویر که تمام صفحه را پر می کند
        Positioned.fill(
          child: Image.asset(
            'images/download (4).jpg', // مسیر تصویر پس‌زمینه
            fit: BoxFit.cover,
          ),
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: CircleAvatar(
              backgroundImage: AssetImage('images/hhh.webp'),
              radius: 70,
            )),
            Text(
              'خوش آمدید',
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
            Text('V 0.2.3',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)
          ],
        ),
      ]),
    );
  }
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (c)=>share()));
                    },
                    child: Text(
                      "Share",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                 
                  PopupMenuItem(
                    child: Text(
                      "Exit",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ];
              },
            ),
          ],
          flexibleSpace: Image.asset(
            'images/hhh.webp',
            fit: BoxFit.cover,
          ),
        ),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/parwiz.jpg'),
                ),
                Text('''  Parwiz Ahmad
       Rahmani''')
              ],
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => settings()));
            },
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (c)=>slider()));
              },
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.blue,
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    Text(
                      '  تنظیمات',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => name()));
            },
            child: Container(
              width: double.infinity,
              height: 50,
              color: Colors.blue,
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  Text(
                    ' !در باره ما',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )
                ],
              ),
            ),
          )
        ],
      )),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => abdulRahman()));
            },
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/1.jpg'),
                    radius: 40,
                  ),
                  Text('    قاری عبدالرحمن السدیس',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => qariMahir()));
            },
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/hq2.jpg'),
                    radius: 40,
                  ),
                  Text('     قاری ماهر ',  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => qariAbdulAziz()));
            },
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/3.jpg'),
                    radius: 40,
                  ),
                  Text('    قاری عبدالعزیز',  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (c) => qariAbdulRahmanAlOssi()));
            },
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/download (5).jpg'),
                    radius: 40,
                  ),
                  Text('    قاری عبدالرحمن العوسی',  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => saleh()));
            },
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/download (6).jpg'),
                    radius: 40,
                  ),
                  Text('     صالح بن عواد المغامسي ',  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => ahmad()));
            },
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/download (11).jpg'),
                    radius: 40,
                  ),
                  Text('      قاری احمد بن علی العحمی ',  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => abdulMajeed()));
            },
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/download (10).jpg'),
                    radius: 40,
                  ),
                  Text('      قاری عبدالمجید ',  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => abdulallah()));
            },
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/download (9).jpg'),
                    radius: 40,
                  ),
                  Text('      قاری عبدالله عوادالحهلی ',  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => qariSaud()));
            },
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/download.jpg'),
                    radius: 40,
                  ),
                  Text('      قاری سعودالسربم ',  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => mohammad()));
            },
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/download (7).jpg'),
                    radius: 40,
                  ),
                  Text('        قاری محمد ',  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('good by')),
    );
  }
}

class abdulRahman extends StatefulWidget {
  const abdulRahman({super.key});

  @override
  State<abdulRahman> createState() => _abdulRahmanState();
}

class _abdulRahmanState extends State<abdulRahman> {
  void _launchURL() async {
    const url = 'https://www.gph.gov.sa'; // URL گوگل
    if (await canLaunch(url)) {
      await launch(url); // باز کردن URL در مرورگر
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 300,
            child: Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'images/1.jpg',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
          Text(textAlign: TextAlign.right,
            '''قاری عبدالرحمن اسدیس یکی از مشهورترین قاریان قرآن کریم در دنیای اسلام است که صدای دلنشین و تلاوت‌های زیبا و بی‌نظیر او در سراسر جهان شناخته شده است. او متولد سال ۱۹۶۵ در تونس است و به عنوان یکی از برجسته‌ترین قاریان قرآن در دنیای عرب و مسلمان شناخته می‌شود.

ویژگی‌های تلاوت قاری عبدالرحمن اسدیس:
۱. صدای دلنشین: صدای او یکی از ویژگی‌های بارز تلاوت‌هایش است که دل هر شنونده‌ای را به خود جلب می‌کند. صدای شفاف، ملایم و گرم او به گونه‌ای است که حس معنویت خاصی را منتقل می‌کند.

مهارت در تجوید: قاری اسدیس در رعایت اصول تجوید قرآن کریم و تلفظ دقیق حروف به ویژه در ادا کردن حروفی مانند "صاد"، "ضاد" و "طا" بسیار ماهر است. این امر باعث می‌شود که تلاوت‌های او هم از لحاظ دقت و هم از لحاظ زیبایی در سطح بالایی قرار گیرد.

تلاوت‌های معروف: او در بسیاری از برنامه‌های مذهبی و قرآنی تلویزیونی و رادیویی تلاوت کرده و از جمله قاریان مشهور در مسابقات قرآنی بوده است. تلاوت‌های او در مساجد مختلف، به ویژه در مسجد الحرام (مکه) و مسجد النبی (مدینه) با استقبال فراوانی مواجه شده است.

اثرگذاری بر مخاطب: قاری اسدیس به دلیل توانایی در انتقال احساسات و مفاهیم قرآن از طریق تلاوت‌هایش، توانسته است به میلیون‌ها نفر در سراسر جهان تأثیر بگذارد. او همواره در تلاش است که قرآن را با دل و جان تلاوت کند، به گونه‌ای که هر کلمه و آیه را با عاطفه و دقت ادا کند.

مسیر زندگی:
عبدالرحمن اسدیس از سنین نوجوانی به تلاوت قرآن علاقه داشت و توانست به سرعت در این زمینه پیشرفت کند. او در مدارس قرآنی تونس تحصیل کرد و سپس به عنوان قاری در مساجد مختلف به فعالیت پرداخت. در نهایت، او در عرصه بین‌المللی به شهرت رسید و به یکی از قاریان برجسته جهان اسلام تبدیل شد.

افتخارات:
قاری عبدالرحمن اسدیس علاوه بر تلاوت‌هایش، در بسیاری از مسابقات قرآنی و همایش‌های اسلامی شرکت کرده و جوایز متعددی را کسب کرده است. همچنین، او عضو فعال در برخی از مؤسسات قرآنی بزرگ و نهادهای اسلامی است که به ترویج فرهنگ قرآنی می‌پردازند.

تلاوت‌های او همچنان در بسیاری از کشورهای اسلامی و غیر اسلامی شنیده می‌شود و تاثیر زیادی بر قلوب مسلمانان دارد.
''',
            style: TextStyle(fontSize: x, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: _launchURL, // تابعی که با کلیک اجرا می‌شود
            child: Text(
              'https://www.gph.gov.sa', // متنی که نمایش داده می‌شود
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue, // رنگ متن (به رنگ لینک)
                decoration: TextDecoration.underline, // زیرخط دار کردن متن
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class qariMahir extends StatefulWidget {
  const qariMahir({super.key});

  @override
  State<qariMahir> createState() => _qariMahirState();
}

class _qariMahirState extends State<qariMahir> {
  void _launchURL() async {
    const url = 'https://www.gph.gov.sa'; // URL گوگل
    if (await canLaunch(url)) {
      await launch(url); // باز کردن URL در مرورگر
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 300,
            child: Row(
              children: [
                Expanded(
                    child: Image.asset(
                  'images/hq2.jpg',
                  fit: BoxFit.cover,
                ))
              ],
            ),
          ),
          Text(textAlign: TextAlign.right,
            '''
قاری ماهر المعقلی یکی از مشهورترین قاریان قرآن در دنیای اسلام است که به خاطر صدای زیبا، تسلط به فنون تجوید و سبک منحصر به فرد تلاوتش شناخته می‌شود. او اهل عربستان سعودی است و به عنوان یکی از قاریان برجسته در مسجد الحرام (مکه) شناخته می‌شود.

زندگی‌نامه و مسیر حرفه‌ای:
ماهر المعقلی در سال ۱۹۶۹ در جده، عربستان سعودی متولد شد. او از سنین کودکی به قرآن علاقه‌مند بود و در محیطی مذهبی رشد کرد که تأثیر زیادی بر تربیت قرآنی او داشت. او در دوران جوانی به یادگیری تلاوت قرآن و فنون تجوید پرداخت و توانست مهارت‌های خود را به‌طور حرفه‌ای تقویت کند.

ویژگی‌های تلاوت ماهر المعقلی:
صدای رسا و زیبا: ماهر المعقلی به خاطر صدای دلنشین و قدرتمندش شناخته می‌شود. تلاوت‌های او همیشه با لطافت خاصی همراه است که بسیاری از شنوندگان را به عمق معانی قرآن می‌برد.

تسلط بر تجوید: قاری المعقلی به دقت و رعایت کامل قواعد تجوید قرآن شهرت دارد. تلفظ صحیح حروف، لحن دقیق و تأکید بر حرکات و ساکن‌ها در تلاوت‌های او بسیار برجسته است.

تلاوت‌های متداول: او به‌طور منظم در مسجد الحرام (مکه) و دیگر اماکن مذهبی تلاوت کرده است. همچنین، در برنامه‌های مختلف تلویزیونی و رادیویی قرآن نیز حضور داشته است.

سبک تلاوت: سبک تلاوت ماهر المعقلی معمولاً آرام و با لحنی ملایم است که به شنونده فرصتی برای تأمل و تفکر در آیات قرآن می‌دهد.

افتخارات:
ماهر المعقلی در بسیاری از مسابقات قرآنی بین‌المللی شرکت کرده و جوایز مختلفی را کسب کرده است. او به عنوان یکی از قاریان معتبر در سطح جهانی شناخته می‌شود و تلاوت‌های او در مراسم‌های مختلف مذهبی پخش می‌شود.

تأثیر جهانی:
تلاوت‌های ماهر المعقلی نه تنها در کشورهای عربی بلکه در سراسر جهان اسلام به‌ویژه در کشورهای غیر عربی نیز محبوبیت دارد. صدای دلنشین او توانسته است هزاران نفر را به گوش دادن به قرآن کریم جذب کند و باعث شده که بسیاری از جوانان قرآن را با علاقه بیشتری بیاموزند.

Q1: چه عواملی باعث محبوبیت ماهر المعقلی به عنوان یک قاری قرآن در سطح جهانی شده است؟
A1: محبوبیت ماهر المعقلی در درجه اول به صدای زیبا و رسا، تسلط به تجوید قرآن و سبک منحصر به فرد تلاوت او برمی‌گردد. تلاوت‌های او علاوه بر اینکه از لحاظ فنی بسیار دقیق است، از نظر احساسی نیز می‌تواند شنونده را به عمق معانی قرآن بکشاند. علاوه بر این، حضور فعال او در مسجد الحرام و پخش جهانی تلاوت‌هایش از طریق رسانه‌های مختلف باعث گسترش محبوبیتش شده است.

Q2: چگونه می‌توان از تلاوت‌های ماهر المعقلی برای بهبود مهارت‌های تجوید استفاده کرد؟
A2: برای بهبود مهارت‌های تجوید، می‌توان به دقت به تلاوت‌های ماهر المعقلی گوش داد و نکات دقیق تجویدی را که در تلاوت او رعایت شده است، مورد مطالعه قرار داد. او به خوبی قواعد تجوید را در تلاوت‌های خود به‌کار می‌برد، به‌ویژه در تلفظ صحیح حروف و رعایت فاصله‌ها و سکون‌ها. بازخوانی و تکرار بخش‌هایی از تلاوت او می‌تواند در یادگیری تجوید مؤثر باشد.

Q3: ماهر المعقلی چگونه توانسته است تلاوت‌های خود را با عواطف و احساسات معنوی ترکیب کند؟
A3: ماهر المعقلی در تلاوت‌های خود با استفاده از لحن‌های ملایم و آرام و با تأکید بر کلمات کلیدی قرآن، توانسته است احساسات معنوی را به شنونده منتقل کند. او به‌خوبی می‌داند که چگونه هر آیه را با توجه به معانی آن تلاوت کند، به‌طوری که شنونده نه تنها معنای لغوی آیات را درک کند، بلکه به عمق و معنای روحی آن نیز پی ببرد. این ترکیب از دقت تجویدی و احساسات معنوی باعث می‌شود که تلاوت‌های او از نظر احساسی بسیار تأثیرگذار باشد.''',
            style: TextStyle(fontSize: x, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: _launchURL, // تابعی که با کلیک اجرا می‌شود
            child: Text(
              'https://www.gph.gov.sa', // متنی که نمایش داده می‌شود
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue, // رنگ متن (به رنگ لینک)
                decoration: TextDecoration.underline, // زیرخط دار کردن متن
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class qariAbdulAziz extends StatefulWidget {
  const qariAbdulAziz({super.key});

  @override
  State<qariAbdulAziz> createState() => _qariAbdulAzizState();
}

class _qariAbdulAzizState extends State<qariAbdulAziz> {
  void _launchURL() async {
    const url = 'https://www.gph.gov.sa'; // URL گوگل
    if (await canLaunch(url)) {
      await launch(url); // باز کردن URL در مرورگر
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 300,
            child: Row(
              children: [
                Expanded(child: Image.asset('images/3.jpg', fit: BoxFit.cover))
              ],
            ),
          ),
          Text(textAlign: TextAlign.right,
            '''قاری عبدالعزیز به احتمال زیاد اشاره به قاری عبدالعزیز آل شیخ (Abdul Aziz Al-Sheikh) دارد که یکی از قاریان و شخصیت‌های مشهور در دنیای قرآن کریم است. البته باید گفت که نام "عبدالعزیز" ممکن است به قاریان مختلفی اطلاق شود، اما بیشترین شهرت را در میان قاریان قرآن به عبدالعزیز آل شیخ داریم که هم در حوزه تلاوت و هم در دیگر زمینه‌های قرآنی فعالیت‌های برجسته‌ای دارد.

1. عبدالعزیز آل شیخ (Abdul Aziz Al-Sheikh)
عبدالعزیز آل شیخ یکی از مشهورترین شخصیت‌های قرآنی در جهان اسلام است که به عنوان قاری قرآن و مفتی اعظم عربستان سعودی شناخته می‌شود.

ویژگی‌ها و فعالیت‌های قاری عبدالعزیز آل شیخ:
تولد و تحصیلات: عبدالعزیز آل شیخ در سال ۱۹۵۳ میلادی (۱۳۷۳ هجری شمسی) در عربستان سعودی به دنیا آمد. او در مدارس دینی عربستان سعودی تحصیل کرد و از همان زمان علاقه زیادی به قرآن داشت.

تحصیل در زمینه قرآن و فقه: وی در دانشگاه‌های اسلامی معتبر عربستان تحصیل کرده و تخصص زیادی در زمینه فقه اسلامی و علوم قرآنی دارد. او از اساتید برجسته قرآن و فقه در عربستان بوده و در بسیاری از کنفرانس‌های بین‌المللی قرآنی شرکت کرده است.

تلاوت قرآن: عبدالعزیز آل شیخ به عنوان یک قاری مشهور قرآن، صدای زیبایی دارد که در تلاوت‌هایش رعایت اصول تجوید و قرآن‌خوانی دقیق را به نمایش می‌گذارد. او در بیشتر مواقع با لحن‌های متناسب و تأثیرگذار قرآن را تلاوت می‌کند. تلاوت‌های او از لحاظ تجوید و دقت در تلفظ آیات قرآن بسیار دقیق و روشن است.

مفتی اعظم عربستان سعودی: عبدالعزیز آل شیخ در سال‌های اخیر به عنوان مفتی اعظم عربستان سعودی انتخاب شد. در این سمت، او نقش مهمی در هدایت فتاوی اسلامی و مسائل دینی در عربستان ایفا می‌کند. او در موضوعات مختلف مذهبی و فقهی سخنان تأثیرگذاری دارد و همواره بر ضرورت پیروی از آموزه‌های قرآن و سنت تأکید می‌کند.

دوره‌های آموزشی قرآن: عبدالعزیز آل شیخ در بسیاری از دوره‌های آموزشی قرآنی شرکت کرده و استاد قرآن بوده است. او از علمای برجسته‌ای است که به آموزش قرآن در کشورهای مختلف پرداخته و در ترویج فرهنگ قرآن تأثیر زیادی داشته است.

آثار و تأثیرگذاری: تلاوت‌های عبدالعزیز آل شیخ در بسیاری از شبکه‌های اسلامی و رسانه‌ها پخش می‌شود و محبوبیت زیادی دارد. بسیاری از مسلمانان در سراسر جهان تلاوت‌های او را دنبال می‌کنند و از صدای زیبای او بهره‌مند می‌شوند.''',
            style: TextStyle(fontSize: x, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: _launchURL, // تابعی که با کلیک اجرا می‌شود
            child: Text(
              'https://www.gph.gov.sa', // متنی که نمایش داده می‌شود
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue, // رنگ متن (به رنگ لینک)
                decoration: TextDecoration.underline, // زیرخط دار کردن متن
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class qariAbdulRahmanAlOssi extends StatefulWidget {
  const qariAbdulRahmanAlOssi({super.key});

  @override
  State<qariAbdulRahmanAlOssi> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<qariAbdulRahmanAlOssi> {
  void _launchURL() async {
    const url = 'https://www.gph.gov.sa'; // URL گوگل
    if (await canLaunch(url)) {
      await launch(url); // باز کردن URL در مرورگر
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 300,
            child: Row(
              children: [
                Expanded(
                    child: Image.asset(
                  'images/download (5).jpg',
                  fit: BoxFit.cover,
                ))
              ],
            ),
          ),
          Text(textAlign: TextAlign.right,
            '''قاری عبدالرحمن العوسی (Abdulrahman Al-Awsi) یکی از قاریان برجسته قرآن کریم از کشور عربستان سعودی است که به دلیل صدای دلنشین و تلاوت‌های زیبای خود شناخته می‌شود. او یکی از قاریان محبوب و تأثیرگذار در دنیای اسلام است و در بسیاری از کشورها به ویژه در جهان عرب، طرفداران زیادی دارد.

زندگی‌نامه و تحصیلات:
قاری عبدالرحمن العوسی در عربستان سعودی به دنیا آمد. او از همان سنین کودکی به قرآن و تلاوت آن علاقه‌مند شد و در مدارس دینی و قرآنی آموزش دید. مانند بسیاری از قاریان مشهور، عبدالرحمن العوسی قرآن را حفظ کرده و سپس تحت نظر اساتید برجسته قرآنی به یادگیری و تسلط بر فنون تجوید و قواعد تلاوت پرداخت.

او برای تکمیل تحصیلات خود در زمینه قرآن و علوم دینی به مؤسسات و مدارس تخصصی در عربستان سعودی رفت و در آنجا توانست تسلط بیشتری بر روش‌های صحیح تلاوت قرآن پیدا کند.

ویژگی‌های تلاوت قاری عبدالرحمن العوسی:
۱. صدای خوش و دلنشین: یکی از ویژگی‌های برجسته تلاوت‌های قاری عبدالرحمن العوسی صدای ملایم و دلنشین اوست که تأثیر زیادی بر روح و قلب شنوندگان می‌گذارد. صدای او دارای لحن خاصی است که باعث جذب شنوندگان به تلاوت‌هایش می‌شود.

تسلط بر تجوید: قاری العوسی در رعایت قواعد تجوید و تلفظ صحیح حروف بسیار ماهر است. او همیشه سعی می‌کند تا قرآن را با دقت و به صورت صحیح تلاوت کند. تجوید دقیق در تلاوت‌های او، به ویژه در خواندن حروف و کلمات عربی به شکلی صحیح و با لحن‌های متفاوت، او را از دیگر قاریان متمایز کرده است.

تلاوت‌های آرام و مؤثر: یکی دیگر از ویژگی‌های تلاوت‌های قاری عبدالرحمن العوسی، لحن آرام و مؤثر اوست. او در تلاوت‌های خود به شکلی آرام و با تسلط، آیات قرآن را می‌خواند که این روش باعث ایجاد آرامش در دل‌های شنوندگان می‌شود و آن‌ها را به تدبر در آیات قرآن دعوت می‌کند.

استفاده از لحن‌های متنوع: قاری عبدالرحمن العوسی در تلاوت‌های خود از لحن‌های مختلف و متناسب با معانی آیات استفاده می‌کند. این توانایی در تنظیم لحن و لحن‌های خاص برای هر بخش از آیات قرآن، تلاوت‌های او را بسیار جذاب و زیبا کرده است.''',
            style: TextStyle(fontSize: x, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: _launchURL, // تابعی که با کلیک اجرا می‌شود
            child: Text(
              'https://www.gph.gov.sa', // متنی که نمایش داده می‌شود
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue, // رنگ متن (به رنگ لینک)
                decoration: TextDecoration.underline, // زیرخط دار کردن متن
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class saleh extends StatefulWidget {
  const saleh({super.key});

  @override
  State<saleh> createState() => _salehState();
}

class _salehState extends State<saleh> {
  void _launchURL() async {
    const url = 'https://www.gph.gov.sa'; // URL گوگل
    if (await canLaunch(url)) {
      await launch(url); // باز کردن URL در مرورگر
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 300,
            child: Row(
              children: [
                Expanded(
                    child: Image.asset(
                  'images/download (6).jpg',
                  fit: BoxFit.cover,
                ))
              ],
            ),
          ),
          Text(textAlign: TextAlign.right,
            '''قاری صالح بن عواد المغامسی (Saleh bin Awwad Al-Mughamsi) یکی از قاریان برجسته قرآن کریم از کشور عربستان سعودی است که به دلیل صدای خوش و تلاوت‌های زیبا و دقیق خود شناخته می‌شود. او همچنین یک عالم دینی برجسته و امام مسجد جامع قبا در مدینه منوره است و در زمینه‌های مختلف دینی، فقهی و قرآنی فعالیت‌های زیادی داشته است.

زندگی‌نامه و تحصیلات:
تولد و پیشینه: قاری صالح بن عواد المغامسی در سال ۱۹۶۱ میلادی (۱۳۸۱ هجری شمسی) در عربستان سعودی به دنیا آمد. او از همان دوران کودکی به قرآن و علوم دینی علاقه‌مند بود و در مدارس دینی عربستان تحصیل کرد.

تحصیلات دینی: صالح بن عواد المغامسی در دانشگاه امام محمد بن سعود اسلامی در ریاض، عربستان سعودی، به تحصیل در رشته‌های دینی پرداخت. او همچنین در مدارس دینی معتبر عربستان در زمینه‌های مختلف فقهی، حدیث، و علوم قرآن تحصیل کرده است. وی در رشته علوم دینی و تفسیر قرآن کریم تخصص یافته است و به همین دلیل توانسته در مسائل فقهی و قرآنی صاحب‌نظر شود.

فعالیت‌های دینی و قرآنی:
امام جماعت مسجد قبا: صالح المغامسی به عنوان امام جماعت مسجد قبا در مدینه منوره مشغول به فعالیت است. مسجد قبا یکی از مساجد مهم و تاریخی در اسلام است که پیامبر اسلام حضرت محمد (ص) خود در هنگام هجرت به مدینه، نخستین مسجد را در آن بنا کرد. این مسجد اهمیت ویژه‌ای در تاریخ اسلام دارد و قاری صالح المغامسی به عنوان امام این مسجد، در تلاوت قرآن و هدایت مسلمانان به وظایف دینی خود پرداخته است.

تلاوت قرآن کریم: قاری صالح بن عواد المغامسی به دلیل صدای خوش و تلاوت‌های زیبای خود شناخته شده است. تلاوت‌های او در بسیاری از مراسم‌های مذهبی و قرآنی در مسجد قبا و همچنین در دیگر مساجد معروف عربستان سعودی مانند مسجد الحرام در مکه مکرمه و مسجد النبی در مدینه پخش شده است. صدای او در تلاوت قرآن به شدت مورد توجه قرار گرفته و به دلیل تسلطش بر اصول تجوید، تأثیر زیادی بر شنوندگان دارد.

تلاوت در ماه رمضان: قاری صالح المغامسی هر سال در ماه مبارک رمضان در مسجد قبا به تلاوت قرآن کریم پرداخته و این تلاوت‌ها در رسانه‌های اسلامی پخش می‌شود. بسیاری از مسلمانان از سراسر دنیا در این ماه به تلاوت‌های او گوش می‌دهند و از لحن و تجوید صحیح او لذت می‌برند.

تفسیر قرآن و تدریس: قاری صالح المغامسی علاوه بر تلاوت قرآن، در زمینه تفسیر قرآن نیز فعالیت‌های برجسته‌ای دارد. او در دانشگاه‌های اسلامی و در بسیاری از محافل قرآنی در سراسر جهان به تدریس تفسیر قرآن کریم و علوم قرآنی پرداخته است. او از اساتید برجسته‌ای است که در زمینه تفسیر و توضیح آیات قرآن بر اساس روایات معتبر و صحیح، به تدریس پرداخته است.

خطبه‌ها و سخنرانی‌ها: صالح بن عواد المغامسی به عنوان یک عالم دینی، در بسیاری از سخنرانی‌ها و خطبه‌های دینی شرکت کرده است. خطبه‌های او اغلب در مورد مسائل اخلاقی، دینی و قرآنی است و سعی دارد مسلمانان را به تقوا، عمل صالح، و ارتباط بیشتر با قرآن کریم دعوت کند. سخنرانی‌های او در شبکه‌های تلویزیونی و رادیویی اسلامی پخش می‌شود و تاثیر زیادی بر مسلمانان دارد.''',
            style: TextStyle(fontSize: x, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: _launchURL, // تابعی که با کلیک اجرا می‌شود
            child: Text(
              'https://www.gph.gov.sa', // متنی که نمایش داده می‌شود
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue, // رنگ متن (به رنگ لینک)
                decoration: TextDecoration.underline, // زیرخط دار کردن متن
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ahmad extends StatefulWidget {
  const ahmad({super.key});

  @override
  State<ahmad> createState() => _ahmadState();
}

class _ahmadState extends State<ahmad> {
  void _launchURL() async {
    const url = 'https://www.gph.gov.sa'; // URL گوگل
    if (await canLaunch(url)) {
      await launch(url); // باز کردن URL در مرورگر
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 300,
            child: Row(
              children: [
                Expanded(
                    child: Image.asset(
                  'images/download (11).jpg',
                  fit: BoxFit.cover,
                ))
              ],
            ),
          ),
          Text(textAlign: TextAlign.right,
            '''قاری احمد بن علی العحم یکی از قاریان برجسته قرآن کریم است که در دنیای اسلام شناخته شده است. با این حال، اطلاعات عمومی و دقیقی در دسترس درباره او نسبت به برخی از قاریان مشهور دیگر وجود ندارد، به خصوص از آنجا که نام او در مقایسه با قاریانی مانند ماهر المعیقلی، عبدالباسط عبدالصمد، و غیره در سطح بین‌المللی شناخته شده نیست. با این حال، برخی از ویژگی‌ها و اطلاعات کلی در مورد قاری احمد بن علی العحم به شرح زیر است:

1. ویژگی‌های تلاوت قاری احمد بن علی العحم:
قاری احمد بن علی العحم به دلیل صدای دلنشین و توانایی بالا در تجوید و تلاوت قرآن کریم شناخته می‌شود. او در هنگام تلاوت قرآن از لحن‌های ملایم و آرام استفاده می‌کند که تأثیر زیادی بر شنوندگان می‌گذارد. در تلاوت‌های او، دقت در تلفظ صحیح حروف عربی و رعایت دقیق قواعد تجوید بسیار مشهود است.

2. تلاوت در محافل قرآنی:
قاری احمد العحم در بسیاری از محافل قرآنی و مراسم‌های مذهبی در داخل و خارج از کشورهای اسلامی به تلاوت قرآن پرداخته است. تلاوت‌های او از لحاظ تجوید، دقت و لحن به ویژه در مراسم‌های دینی، به خصوص در ماه‌های رمضان، محبوب است.

3. تأثیرگذاری:
تلاوت‌های قاری احمد بن علی العحم به دلیل صدای خوشایند و رعایت اصول تجوید، شنوندگان را به تأمل و تدبر در آیات قرآن کریم دعوت می‌کند. او به عنوان یکی از قاریان با توانایی‌های خاص در تلاوت، محبوبیت زیادی دارد و در برخی کشورهای عربی و اسلامی شناخته می‌شود.

4. آثار و پخش تلاوت‌ها:
تلاوت‌های قاری احمد العحم در رسانه‌های مختلف اسلامی به ویژه در شبکه‌های تلویزیونی و رادیویی جهان عرب پخش می‌شود. این تلاوت‌ها مورد توجه مسلمانان قرار گرفته و در بسیاری از مواقع در مناسبت‌های مذهبی و اجتماعات دینی پخش می‌شود.

5. توجه به تجوید و قواعد قرآنی:
یکی از نکات برجسته در تلاوت‌های قاری احمد بن علی العحم، رعایت دقیق قواعد تجوید و تلفظ صحیح حروف است. او بر اهمیت استفاده از تجوید صحیح در تلاوت قرآن تأکید دارد و همیشه سعی می‌کند که تلاوت‌هایش با رعایت کامل این قواعد باشد.

نتیجه‌گیری:
با اینکه اطلاعات دقیق و گسترده‌ای درباره قاری احمد بن علی العحم در منابع عمومی در دسترس نیست، او همچنان یکی از قاریان شناخته‌شده قرآن است که با تلاوت‌های خود توانسته تأثیر مثبت و معنوی زیادی بر شنوندگان بگذارد. تلاوت‌های او به دلیل صدای خوش و رعایت اصول تجوید، همچنان در محافل مختلف قرآنی و مذهبی مورد توجه قرار دارد.''',
            style: TextStyle(fontSize: x, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: _launchURL, // تابعی که با کلیک اجرا می‌شود
            child: Text(
              'https://www.gph.gov.sa', // متنی که نمایش داده می‌شود
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue, // رنگ متن (به رنگ لینک)
                decoration: TextDecoration.underline, // زیرخط دار کردن متن
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class abdulMajeed extends StatefulWidget {
  const abdulMajeed({super.key});

  @override
  State<abdulMajeed> createState() => _abdulMajeedState();
}

class _abdulMajeedState extends State<abdulMajeed> {
  void _launchURL() async {
    const url = 'https://www.gph.gov.sa'; // URL گوگل
    if (await canLaunch(url)) {
      await launch(url); // باز کردن URL در مرورگر
    } else {
      throw 'Could not launch $url';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 300,
            child: Row(
              children: [
                Expanded(
                    child: Image.asset(
                  'images/download (10).jpg',
                  fit: BoxFit.cover,
                ))
              ],
            ),
          ),
          Text(textAlign: TextAlign.right,
            '''قاری عبدالمجید بن عبدالغفور مکه (Abdulmajid Makkah) یکی از قاریان قرآن کریم از کشور عربستان سعودی است که در دنیای اسلام به خاطر تلاوت‌های زیبا و دلنشینش شناخته شده است. اطلاعات دقیقی در مورد زندگی‌نامه و پیشینه او در منابع عمومی وجود ندارد، اما او به عنوان یک قاری مشهور در مراسم‌های مذهبی و محافل قرآنی حضور داشته و تلاوت‌های او در رسانه‌های مختلف اسلامی پخش می‌شود.

ویژگی‌های تلاوت قاری عبدالمجید مکه:
صدای دلنشین و تأثیرگذار: قاری عبدالمجید مکه یکی از قاریانی است که صدای خوش و دلنشینی دارد. تلاوت‌های او با لحن ملایم و آرامش‌بخش همراه است که مخاطبان را به تفکر و تدبر در آیات قرآن دعوت می‌کند. صدای او در تلاوت قرآن کریم تأثیر زیادی بر شنوندگان می‌گذارد و بسیاری از مردم در سراسر جهان از گوش دادن به تلاوت‌های او لذت می‌برند.

تسلط بر تجوید: عبدالمجید مکه از تسلط بالایی بر تجوید قرآن برخوردار است. او هنگام تلاوت قرآن، تمام قواعد تجوید را به‌طور دقیق رعایت می‌کند و از این جهت تلاوت‌های او بسیار شفاف و معنادار به گوش می‌رسد. او به دقت در تلفظ حروف، تنغیم مناسب و رعایت وقف و ابتداء اهمیت زیادی می‌دهد.

آرامش و دقت در تلاوت: تلاوت‌های قاری عبدالمجید مکه به طور کلی به آرامش و دقت در خواندن مشهور است. او به طور ویژه در تلاوت آیات قرآن از لحن‌های متفاوت استفاده می‌کند و در هر آیه با توجه به مفهوم آن، لحن متناسبی را به کار می‌برد.

تلاوت‌های مناسب در محافل مذهبی: قاری عبدالمجید مکه در بسیاری از محافل مذهبی و محافل قرآنی در عربستان سعودی و دیگر کشورهای اسلامی حضور داشته است. تلاوت‌های او در ایام ماه رمضان، به‌ویژه در شب‌های قدر و در مناسبت‌های خاص مذهبی، پخش می‌شود و محبوبیت زیادی دارد.

فعالیت‌های قاری عبدالمجید مکه:
پخش تلاوت‌ها در رسانه‌ها: تلاوت‌های قاری عبدالمجید مکه در بسیاری از شبکه‌های تلویزیونی و رادیویی اسلامی پخش می‌شود. این تلاوت‌ها در سراسر جهان به ویژه در کشورهای اسلامی شنیده می‌شوند.

تلاوت در مساجد و مراسم مذهبی: قاری عبدالمجید مکه در مساجد مختلف عربستان سعودی به ویژه در مسجد الحرام و مسجد النبی (صلى الله عليه وسلم) در مدینه، به تلاوت قرآن پرداخته است. او در مراسم‌های بزرگ مذهبی، به‌ویژه در ماه رمضان و ایام حج، نقش مهمی در تلاوت قرآن دارد.

رسانه‌های اجتماعی و آنلاین: تلاوت‌های قاری عبدالمجید مکه همچنین در پلتفرم‌های آنلاین مانند یوتیوب و شبکه‌های اجتماعی منتشر می‌شود، که این باعث می‌شود تا افراد در سراسر دنیا از صدای زیبای او بهره‌مند شوند.''',
            style: TextStyle(fontSize: x, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: _launchURL, // تابعی که با کلیک اجرا می‌شود
            child: Text(
              'https://www.gph.gov.sa', // متنی که نمایش داده می‌شود
              style: TextStyle(
                fontSize: x,
                color: Colors.blue, // رنگ متن (به رنگ لینک)
                decoration: TextDecoration.underline, // زیرخط دار کردن متن
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class abdulallah extends StatefulWidget {
  const abdulallah({super.key});

  @override
  State<abdulallah> createState() => _abdulallahState();
}

class _abdulallahState extends State<abdulallah> {
  void _launchURL() async {
    const url = 'https://www.gph.gov.sa'; // URL گوگل
    if (await canLaunch(url)) {
      await launch(url); // باز کردن URL در مرورگر
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 300,
            child: Row(
              children: [
                Expanded(
                    child: Image.asset(
                  'images/download (9).jpg',
                  fit: BoxFit.cover,
                ))
              ],
            ),
          ),
          Text(textAlign: TextAlign.right,
            '''اری عبدالله عواد الحهلی (Abdullah Awad Al-Hudhayfi) یکی از قاریان مشهور قرآن کریم از کشور عربستان سعودی است. او به عنوان یک قاری برجسته و استاد در تلاوت قرآن شناخته می‌شود و تلاوت‌های او به دلیل صدای دلنشین، تسلط بر تجوید و لحن زیبای قرآنی مورد تحسین قرار گرفته است. قاری عبدالله عواد الحهلی همچنین در بسیاری از مساجد مهم عربستان و در برخی از مراسم‌های بزرگ مذهبی حضور داشته است.

زندگی‌نامه و تحصیلات:
تولد و پیشینه: قاری عبدالله عواد الحهلی در کشور عربستان سعودی به دنیا آمد. اطلاعات دقیق در مورد تاریخ تولد و پیشینه او در منابع عمومی به طور گسترده موجود نیست، اما وی از کودکی علاقه زیادی به قرآن و تلاوت آن داشت.

تحصیلات دینی: عبدالله عواد الحهلی در مدارس دینی و مؤسسات قرآنی عربستان سعودی تحصیل کرد و در علوم قرآن و تجوید تخصص پیدا کرد. او به‌ویژه در زمینه‌های تلاوت قرآن و قواعد تجوید بسیار ماهر است و در این زمینه تحت نظر اساتید برجسته آموزش دیده است.

ویژگی‌های تلاوت قاری عبدالله عواد الحهلی:
صدای دلنشین و لحن زیبا: یکی از ویژگی‌های برجسته تلاوت‌های قاری عبدالله عواد الحهلی، صدای بسیار زیبا و دلنشین او است. صدای او به قدری مؤثر است که بسیاری از شنوندگان را به تفکر و تدبر در آیات قرآن کریم دعوت می‌کند. لحن مناسب و زیبای او تأثیر زیادی بر شنوندگان دارد و موجب جذب آن‌ها به قرآن می‌شود.

تسلط بر تجوید: قاری عبدالله عواد الحهلی از تسلط بالایی بر اصول تجوید برخوردار است. او هنگام تلاوت قرآن به دقت در تلفظ حروف، رعایت وقف و ابتداء، و استفاده از لحن‌های مناسب برای هر آیه اهمیت می‌دهد. تلاوت‌های او به دلیل رعایت دقیق قواعد تجوید، بسیار روان و قابل فهم است.

آرامش و تأثیر معنوی: تلاوت‌های قاری عبدالله عواد الحهلی معمولاً دارای لحن آرامش‌بخش و معنوی است که تأثیر زیادی بر روح و روان شنوندگان دارد. او در تلاوت‌های خود از آرامش و دقت زیادی استفاده می‌کند که باعث می‌شود شنوندگان در زمان گوش دادن به تلاوت‌های او احساس نزدیکی به خداوند و آرامش روحی پیدا کنند.

تنوع در لحن‌ها: قاری عبدالله عواد الحهلی توانایی تغییر لحن‌های خود را بر اساس معانی آیات قرآن دارد. او در تلاوت خود به تناسب معانی هر آیه از لحن‌های مختلف استفاده می‌کند، که این ویژگی تلاوت‌های او را بسیار جذاب و تأثیرگذار می‌کند.''',
            style: TextStyle(fontSize: x, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: _launchURL, // تابعی که با کلیک اجرا می‌شود
            child: Text(
              'https://www.gph.gov.sa', // متنی که نمایش داده می‌شود
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue, // رنگ متن (به رنگ لینک)
                decoration: TextDecoration.underline, // زیرخط دار کردن متن
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class qariSaud extends StatefulWidget {
  const qariSaud({super.key});

  @override
  State<qariSaud> createState() => _qariSaudState();
}

class _qariSaudState extends State<qariSaud> {
  void _launchURL() async {
    const url = 'https://www.gph.gov.sa'; // URL گوگل
    if (await canLaunch(url)) {
      await launch(url); // باز کردن URL در مرورگر
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 300,
            child: Row(
              children: [
                Expanded(
                    child: Image.asset(
                  'images/download.jpg',
                  fit: BoxFit.cover,
                ))
              ],
            ),
          ),
          Text(textAlign: TextAlign.right,
            '''قاری سعود بن ابراهیم السربم (Saud Al-Sarim) یکی از قاریان برجسته قرآن کریم از کشور عربستان سعودی است که به‌خاطر تلاوت‌های زیبا و دلنشین خود شناخته می‌شود. این قاری، که در دنیای قرآن و تلاوت‌های قرآن شهرت زیادی دارد، به خصوص در کشورهای اسلامی شناخته شده است.

زندگی‌نامه و تحصیلات:
قاری سعود السربم، مانند بسیاری از قاریان معروف، از دوران کودکی به قرآن و تلاوت آن علاقه‌مند شد و در مدارس دینی عربستان سعودی تحصیل کرد. اطلاعات دقیق در مورد تاریخ تولد و تحصیلات او در منابع عمومی محدود است، اما او در زمینه علوم قرآنی و تجوید آموزش‌های لازم را دریافت کرده است.

او به عنوان یکی از قاریان سعودی در زمینه تلاوت قرآن کریم در مساجد مختلف عربستان و دیگر کشورهای اسلامی فعالیت دارد.

ویژگی‌های تلاوت قاری سعود السربم:
صدای خوش و دلنشین: قاری سعود السربم به خاطر صدای دلنشین و لحن خاص خود معروف است. صدای او معمولاً با آرامش و لحن ملایم همراه است که به شنوندگان امکان می‌دهد به راحتی به آیات قرآن توجه کنند و به تدبر در آن‌ها پردازند.

تسلط بر تجوید و تلفظ دقیق: قاری سعود السربم تسلط بالایی بر تجوید قرآن دارد. او به‌خوبی قواعد تجوید را رعایت می‌کند و در تلاوت خود حروف و کلمات را به‌درستی و با دقت بسیار می‌خواند. این ویژگی باعث می‌شود که تلاوت‌های او شفاف، روان و بسیار دلنشین باشد.

لحن مناسب و تأثیرگذار: یکی دیگر از ویژگی‌های بارز تلاوت‌های قاری سعود السربم، استفاده از لحن‌های مختلف در خواندن آیات قرآن است. او بسته به معنای آیات و مفهوم آن‌ها، لحن‌های مناسب و تأثیرگذاری را به‌کار می‌برد که به شنوندگان کمک می‌کند تا بهتر با معانی قرآن ارتباط برقرار کنند.

آرامش و تأثیر معنوی: تلاوت‌های قاری سعود السربم معمولاً آرامش‌بخش و روحانی است. لحن ملایم و صدای پرمغز او باعث می‌شود که شنوندگان بتوانند به راحتی در آیات قرآن تدبر کنند و از آن بهره‌برداری معنوی کنند.

فعالیت‌های قاری سعود السربم:
تلاوت در مساجد: قاری سعود السربم در مساجد مختلف عربستان سعودی به‌ویژه در مسجد الحرام در مکه مکرمه و مسجد النبی در مدینه منوره به تلاوت قرآن پرداخته است. تلاوت‌های او در این مساجد در ایام مختلف به‌ویژه در ماه رمضان و ایام حج، مورد توجه قرار می‌گیرد.

پخش تلاوت‌ها در رسانه‌ها: تلاوت‌های قاری سعود السربم در بسیاری از رسانه‌های اسلامی، شامل شبکه‌های تلویزیونی و رادیویی پخش می‌شود. این تلاوت‌ها در سراسر جهان شنیده می‌شود و طرفداران زیادی در کشورهای مختلف اسلامی دارد.

محافل قرآنی و همایش‌ها: قاری سعود السربم در بسیاری از محافل قرآنی و همایش‌های مذهبی در داخل و خارج از عربستان سعودی حضور داشته است. او در این محافل به تلاوت قرآن پرداخته و از وی به‌عنوان یکی از قاریان برجسته و شناخته‌شده یاد می‌شود.''',
            style: TextStyle(fontSize: x, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: _launchURL, // تابعی که با کلیک اجرا می‌شود
            child: Text(
              'https://www.gph.gov.sa', // متنی که نمایش داده می‌شود
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue, // رنگ متن (به رنگ لینک)
                decoration: TextDecoration.underline, // زیرخط دار کردن متن
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class mohammad extends StatefulWidget {
  const mohammad({super.key});

  @override
  State<mohammad> createState() => _mohammadState();
}

class _mohammadState extends State<mohammad> {
  void _launchURL() async {
    const url = 'https://www.gph.gov.sa'; // URL گوگل
    if (await canLaunch(url)) {
      await launch(url); // باز کردن URL در مرورگر
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 300,
            child: Row(
              children: [
                Expanded(
                    child: Image.asset(
                  'images/download (7).jpg',
                  fit: BoxFit.cover,
                ))
              ],
            ),
          ),
          Text(textAlign: TextAlign.right,
            '''قاری محمد قاری (Muhammad Qari) یکی از قاریان معروف قرآن کریم از عربستان سعودی است که به‌خاطر صدای دلنشین، تسلط بر تجوید و لحن زیبا شناخته می‌شود. او در محافل قرآنی و مراسم‌های مذهبی متعدد در عربستان سعودی و سایر کشورهای اسلامی حضور داشته و تلاوت‌های او به‌ویژه در مسجد الحرام در مکه مکرمه، در ایام حج و ماه رمضان، بسیار مورد توجه قرار می‌گیرد.

ویژگی‌های تلاوت قاری محمد قاری:
صدای خوش و لحن ملایم: یکی از ویژگی‌های برجسته تلاوت‌های قاری محمد قاری، صدای دلنشین و لحن ملایم او است. صدای او توانایی ایجاد ارتباط عمیق معنوی با شنوندگان را دارد و شنوندگان به راحتی می‌توانند در آیات قرآن تدبر کنند و از تلاوت‌های او لذت ببرند.

تسلط بر تجوید قرآن: قاری محمد قاری در تلاوت خود از تسلط بسیار بالایی بر تجوید قرآن برخوردار است. او تمامی قواعد تجوید را به‌دقت رعایت می‌کند و در تلفظ حروف، وقف، ابتداء، و کشش‌های لازم دقت فراوانی دارد. این ویژگی باعث می‌شود که تلاوت‌های او بسیار دقیق و متناسب با قواعد قرآنی باشد.

لحن‌های متفاوت و مناسب برای هر آیه: قاری محمد قاری به‌خوبی از لحن‌های مختلف برای تلاوت آیات قرآن استفاده می‌کند. او توانایی دارد که لحن خود را مطابق با معانی آیات تغییر دهد و از این طریق تأثیر بیشتری بر شنوندگان بگذارد. این ویژگی باعث می‌شود که تلاوت‌های او به‌شدت تأثیرگذار و قابل درک باشد.

تلاوت‌های آرامش‌بخش و معنوی: تلاوت‌های قاری محمد قاری عموماً با لحن آرامش‌بخش و روحانی همراه است. شنوندگان پس از شنیدن تلاوت‌های او احساس آرامش و تأمل در کلام خداوند پیدا می‌کنند. این ویژگی باعث شده که تلاوت‌های او در مراسم‌های دینی و قرآنی مختلف بسیار محبوب باشد.

فعالیت‌ها و شهرت:
تلاوت در مسجد الحرام و مسجد النبی: قاری محمد قاری در یکی از مهم‌ترین و معتبرترین مساجد اسلامی جهان، مسجد الحرام در مکه مکرمه، به تلاوت قرآن پرداخته است. همچنین او در مسجد النبی در مدینه منوره نیز حضور داشته و تلاوت‌های زیبا و تاثیرگذار خود را در این اماکن مقدس ارائه کرده است. این دو مسجد از مهم‌ترین مراکز مذهبی برای مسلمانان هستند و تلاوت‌های قاری محمد قاری در این مکان‌ها مورد استقبال بسیاری قرار می‌گیرد.

پخش تلاوت‌ها در رسانه‌ها: تلاوت‌های قاری محمد قاری در بسیاری از رسانه‌های اسلامی، اعم از شبکه‌های تلویزیونی و رادیویی، پخش می‌شود. این تلاوت‌ها علاوه بر عربستان سعودی، در کشورهای مختلف مسلمانان شنیده می‌شود و محبوبیت زیادی دارد. همچنین بسیاری از تلاوت‌های او در پلتفرم‌های آنلاین مانند یوتیوب و سایر رسانه‌های اجتماعی در دسترس قرار دارد.

محافل قرآنی و مسابقات: قاری محمد قاری در محافل قرآنی بزرگ، همایش‌ها و مسابقات قرآن در داخل و خارج از عربستان سعودی شرکت کرده است. او در این محافل با دیگر قاریان بزرگ قرآن رقابت کرده و تلاوت‌های خود را به اجرا می‌گذارد. این محافل معمولاً در ماه رمضان، ایام حج، و دیگر مناسبت‌های اسلامی برگزار می‌شود.''',
            style: TextStyle(fontSize: x, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: _launchURL, // تابعی که با کلیک اجرا می‌شود
            child: Text(
              'https://www.gph.gov.sa', // متنی که نمایش داده می‌شود
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue, // رنگ متن (به رنگ لینک)
                decoration: TextDecoration.underline, // زیرخط دار کردن متن
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class share extends StatefulWidget {
  const share({super.key});

  @override
  State<share> createState() => _shareState();
}

class _shareState extends State<share> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                String share = 'https://www.google.com';
                Share.share(share);
              },
              child: Text(
                'اشتراک گذاری لینک',
                style: TextStyle(color: Colors.blue),
                
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                foregroundColor: Colors.black
              ),
              ),
        ),
      ),
    );
  }
}


class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('بزرک کردن سایز متن',
            style: TextStyle(fontSize: x,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Slider(value: x, 
            max: 100,
            min: 0.0,
            onChanged: (n){
              setState(() {
                x = n;
              });
            }),
            SizedBox(height: 10,),
             Text(
              '${x.toStringAsFixed(0)}%', // تبدیل مقدار x به درصد
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

