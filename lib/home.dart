import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:top_ten/info.dart';
import 'info.dart';

var names = [
  'مسجد جامع هرات',
  'بودای بامیان',
  'مناره های هرات',
  'طاق بست هلمند',
  'مسجد کبود مزار شریف',
  'تخت رستم',
  'شاه دو شمشیره',
  'چهل زینه',
  'پل مالان',
  'منار جام',
];
var images = [
  'assets/images/heratmosq.jpg',
  'assets/images/buda.jpg',
  'assets/images/munaar.jpg',
  'assets/images/b.jfif',
  'assets/images/mazar.jfif',
  "assets/images/takht.jpg",
  'assets/images/shah.jfif',
  'assets/images/40zineh.jfif',
  'assets/images/malan.jpg',
  'assets/images/jaam.jfif',
];
var texts = [
  '''مسجد جامع هرات (دگرنام: مسجد جمعه هرات) کهن‌ترین مسجد در هرات است که بسیار بازسازی شده‌است. بیشتر گسترش آن در دورهٔ طلایی عهد تیموریان بود.
این مسجد را سلطان غیاث الدین غوری در سال ۵۹۷ ق. طرح‌ریزی نمود اما موفق به تکمیل آن نشد. جسد وی در سال ۱۲۰۲ میلادی در زیر گنبد در پشت ایوان شمالی مسجد مدفون گردیده‌است.
تنها بخش کوچکی از مسجد عهد غوریان در درب ورودی جنوبی باقی مانده‌است. تزیینات دورهٔ غوری پسانترها زیر کار تزیین دورهٔ تیموریان که مسجد را به ذوق و سلیقهٔ خود تزیین نمودند مخفی ماند که در سال ۱۹۶۴ کارشناسان آن را بازیابی نمودند. اما در اثر مرور زمان بخش زیادی از کار پر مصرف تیموریان نیز از میان رفت که در نوسازی‌های سال ۱۳۲۲ خورشیدی روی مسجد انجام گرفت بخشی از آن بازسازی شد. در عهد تیموریان پایتخت در هرات واقع گردیده بود. تیموریان با جلب هنرمندان، معماران، فیلسوفان و شعرا به دربار خود رهبری نهضت فرهنگی را بدست گرفتند که از دوره‌های پر درخشش تاریخ هرات می‌باشد. شاهرخ و همسرش گوهرشاد بیگم از
 پیشتازان دورهٔ نخست عصر تیموری به‌شمار می‌روند. حکومت سلطان حسین بایقرا از سال ۱۴۶۸ الی ۱۵۰۶ میلادی اوج دورهٔ طلایی تیموریان به‌شمار می‌رود.''',

  '''بودای بامیان، مجسمه‌های بزرگی هستند که در دل کوه در استان بامیان افغانستان ساخته شده بودند. این مجسمه‌ها عظمتی وصف ناپذیر داشتند و به عنوان یکی از جاذبه‌های گردشگری افغانستان شناخته می‌شدند. متأسفانه در سال ۲۰۰۱، نیروهای طالبان این مجسمه‌ها را به دلیل تضاد با آیین اسلامی منفجر کردند.
  ''',

  '''مناره‌های مصلی هرات، یادگار اوج شکوفایی هنر دوره تیموری است که هنوز هم به حیث نماد از داشته های فرهنگی این ولایت تاریخی شناخته می‌شود. مناره‌های مصلی هرات شامل ۶ منار باقی‌مانده است که یک پایه منار از مسجد جامع گوهرشاد، چهار منار از مدرسه سلطان حسین میرزا و یک منار از گوشه شمال غربی مدرسه گوهر شاد بیگم در اثر بمباران طیارات روسی بر فراز سنگرهای خود نابود شده‌اند''',
  '''''',
  '''مسجد علی بن ابی‌طالب، معروف به مسجد کبود در مزار شریف در شمال ولایت بلخ افغانستان واقع شده و یکی از مهم‌ترین بناهای تاریخی در افغانستان و مرکز جشن نوروز در شمال افغانستان است. با وجود اینکه به اعتقاد اکثر شیعیان مقبرهٔ علی بن ابی‌طالب در شهر نجف عراق به خاک سپرده شده، اما روایاتی اسطوره‌ای حکایت از آن دارند که پیکر وی پنهانی به شمال بلخ منتقل شده و توسط ملایی در قرن ششم هجری به کشف رسیده‌است.''',
  '''تَختِ رُستَم نام یکی از آثار تاریخی افغانستان واقع در استان سمنگان آن کشور است. این تخت عظیم سنگی با قدمت حدود ۳۵۰۰سال، یکی از مهم ترین بناهای به جا مانده از دوره ی بوداییان می باشد. محیط توپ رستم(تشله رستم) حدود ۸۵متر است و در اطراف آن غار ها و اتاق های متعددی وجود دارد. بوداییان از این اتاق ها به عنوان معبد یا بت خانه استفاده می کردند. آنها بت های خود را در این مکان نگه داشته و به عبادت آنها می پرداختند. این تخت همچنین دارای حفره هایی برای نگه داری و مخفی نمودن اشیای گران بها و مسکوکات آن زمان بوده است. هنر هیکل تراشی و مجسمه سازی نیز در این دوره بسیار مرسوم بوده و رونق داشته است.''',
  '''''',
  '''
  چل‌زینه یکی از اماکن دیدنی شهر قندهار افغانستان است که بر روی کوهی «چهل زینه» یکی از جاذبه‌های تاریخی و فرهنگی افغانستان
   است که در دوران ظهیرالدین محمد بابر احداث شده‌است. این بنا در سمت غرب شهر قندهار بر فراز کوه قیتول «سر پوزه»، طاق سنگی تراشیده شده با ۴۴ بته
   زینه در بین مردم به چهل زینه معروف است. نام اصلی چهل زینهٔ قندهار (رواق جهان‌نما) می‌باشد که در کتیبه‌های داخل رواق به این نام درج گردیده‌است.
نوع معماری اصیل اسلامی و هندی که در ساخت این طاق یا رواق استفاده‌شده به آن زیبایی بخشیده‌است.
 موقعیت جغرافیایی این طاق در مکانی سرسبز و نزدیک به [رود ارغنداب] واقع شده که بر زیبایی این مکان تاریخی افزوده‌است. نام دیگر این طاق «چهل پله» می‌باشد.
 این بنا تاریخی که «فاروق انصاری» محقق و پژوهشگر افغانستانی از آن با نام «پیش طاق» نیز یاد کرده‌است، به دستور ظهیرالدین محمد بابر بنیان‌گذار سلسله 
حاکمان «بابری» بتاریخ ۱۳ شوال سال ۹۲۸ پس از فتح دوم قندهار احداث گردید و کار ساخت آن در سال ۹۵۳ قمری پس از ۲۵ سال با وقفه خاتمه پیدا کرد.
  ''',
  '''''',
  '''''',
];

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  var iconColor = Colors.white;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,

        drawer: Drawer(
          backgroundColor: Colors.white10,
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 10, 10, 10),
                      Color.fromARGB(255, 25, 134, 190),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ), //BoxDecoration
                child: Text(
                  textAlign: TextAlign.center,
                  "Top 10 Ancient Places\n Of\n Afghanistan",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: 'pacifico',
                      fontWeight: FontWeight.w400),
                ),
              ), //DrawerHeader
              ListTile(
                autofocus: true,
                splashColor: Colors.black,
                hoverColor: Colors.blue,
                tileColor: Color.fromARGB(50, 0, 162, 255),
                leading: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
                title: const Text(
                  ' About ',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'pacifico',
                      fontSize: 16),
                ),
                onTap: () {},
              ),

              ListTile(
                autofocus: true,
                splashColor: Colors.black,
                hoverColor: Colors.blue,
                tileColor: Color.fromARGB(50, 0, 162, 255),
                leading: const Icon(
                  Icons.workspace_premium,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 30,
                ),
                title: const Text(' Go Premium ',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'pacifico',
                        fontSize: 16)),
                onTap: () {},
              ),
              ListTile(
                autofocus: true,
                splashColor: Colors.black,
                hoverColor: Colors.blue,
                tileColor: Color.fromARGB(50, 0, 162, 255),
                leading: const Icon(
                  Icons.save_as,
                  color: Colors.white,
                  size: 30,
                ),
                title: const Text(' Saved ',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'pacifico',
                        fontSize: 16)),
                onTap: () {},
              ),
              ListTile(
                autofocus: true,
                splashColor: Colors.black,
                hoverColor: Colors.blue,
                tileColor: Color.fromARGB(50, 0, 162, 255),
                leading: const Icon(
                  Icons.more_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                title: const Text(' More ',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'pacifico',
                        fontSize: 16)),
                onTap: () {},
              ),
            ],
          ),
        ), //Drawer
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: AppBar(
                backgroundColor: Colors.blue.withOpacity(0.3),
                title: Text('TAPA'),
                elevation: 0.0,
                actions: [
                  PopupMenuButton(
                      itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Text('Share the app'),
                            ),
                            PopupMenuItem(
                              child: Text('Exit'),
                              textStyle: TextStyle(color: Colors.red),
                              onTap: () {
                                setState(() {
                                  Navigator.pop(context);
                                });
                              },
                            ),
                          ])
                ],
              ),
            ),
          ),
          preferredSize: Size(
            double.infinity,
            56.0,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: ListView.separated(
              padding: EdgeInsets.only(top: 10),
              itemBuilder: (c, int i) => ListTile(
                    contentPadding: EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                    tileColor: Color.fromARGB(255, 43, 93, 143),
                    trailing: CircleAvatar(
                      backgroundImage: AssetImage(images[i]),
                      radius: 25,
                    ),
                    title: Text(names[i], textAlign: TextAlign.center),
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Information(
                                text: texts[i],
                                name: names[i],
                                image: images[i],
                              ),
                            ));
                      });
                    },
                  ),
              itemCount: names.length,
              separatorBuilder: (context, index) => Divider()),
        ),
      ),
    );
  }
}
