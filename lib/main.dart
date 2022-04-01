import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'ItemListModel.dart';
import 'LandingPage.dart';
import 'appBar/AppBar.dart';
import 'banner/Bannr.dart';

void main() {
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(desktop: 800, tablet: 550, watch: 200),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LandingPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late MediaQueryData mediaQueryData;
  List<ItemModel> materialItemList = [
    ItemModel(
        id: 0,
        name: "App bar",
        subTitle:
            "Display information and actions relatings to the current screen"),
    ItemModel(
        id: 1, name: "Banner", subTitle: "Displaying a banner within a list"),
    ItemModel(
        id: 2,
        name: "Bottom app bar",
        subTitle: "Display navigation and action at the bottom"),
    ItemModel(
        id: 3,
        name: "Bottom navigation",
        subTitle: "Bottom navigation with cross-fadding views"),
    ItemModel(
        id: 4,
        name: "Bottom sheet",
        subTitle: "Presistent and model bottom sheets"),
    ItemModel(
        id: 5, name: "Buttons", subTitle: "Text, elevated, outline, and more"),
    ItemModel(
        id: 6, name: "Card", subTitle: "Baseline card with rounderd corners"),
    ItemModel(
        id: 7,
        name: "Chips",
        subTitle:
            "Compact element that represent an inout, attribute, or action"),
    ItemModel(
        id: 8, name: "Data tables", subTitle: "Row and columns of information"),
    ItemModel(
        id: 9, name: "Dialoge", subTitle: "Simple, alert, and fullscreen"),
    ItemModel(
        id: 10,
        name: "Divider",
        subTitle:
            "A divider is a line that groups content in lists and layout"),
    ItemModel(id: 11, name: "Grid list", subTitle: "Row and column layout"),
    ItemModel(id: 12, name: "List", subTitle: "Scrolling list layout"),
    ItemModel(id: 13, name: "Menu", subTitle: "Menu buttons and simple menus"),
    ItemModel(
        id: 14,
        name: "Navigation drawer",
        subTitle: "Displating a drawer within appbar"),
    ItemModel(
        id: 15,
        name: "Navigation rail",
        subTitle: "Displaying a Naviation Rail within an app"),
    ItemModel(id: 16, name: "Picker", subTitle: "Date and time selection"),
    ItemModel(
        id: 17,
        name: "Progress indicators",
        subTitle: "Linear, circular, indetermiate"),
    ItemModel(
        id: 18,
        name: "Selection button",
        subTitle: "Checkboxes, radio button, and switch"),
    ItemModel(
        id: 19,
        name: "Slider",
        subTitle: "Widgets for selection a value by swipe"),
    ItemModel(
        id: 20,
        name: "Snackbars",
        subTitle: "Snackbars show messages at the bottom of the screen"),
    ItemModel(
        id: 21,
        name: "Tabs",
        subTitle: "Tabse with independently scrollable views"),
    ItemModel(
        id: 22,
        name: "Text fields",
        subTitle: "Single line of editable text and number"),
    ItemModel(
        id: 23,
        name: "Tools tips",
        subTitle: "Short message display on ling press or hover"),
  ];
  List<ItemModel> cupertinoList = [
    ItemModel(
      id: 0,
      name: "Activity indicator",
      subTitle: "iOS-style activity indicator",
    ),
    ItemModel(
      id: 1,
      name: "Alert",
      subTitle: "iOS-style alert dialogs",
    ),
    ItemModel(
      id: 2,
      name: "Button",
      subTitle: "iOS-style button",
    ),
    ItemModel(
      id: 3,
      name: "Context Menu",
      subTitle: "iOS-style context menu",
    ),
    ItemModel(
      id: 4,
      name: "Navigation bar",
      subTitle: "iOS-style navigation bar",
    ),
    ItemModel(
      id: 5,
      name: "Picker",
      subTitle: "iOS-style date and time picker",
    ),
    ItemModel(
      id: 6,
      name: "Pull to referesh",
      subTitle: "iOS-style to refresh control",
    ),
    ItemModel(
      id: 7,
      name: "Segmanted control",
      subTitle: "iOS-style segmanted control",
    ),
    ItemModel(
      id: 8,
      name: "Slider",
      subTitle: "iOS-style slider",
    ),
    ItemModel(
      id: 0,
      name: "Switch",
      subTitle: "iOS-style Switch",
    ),
    ItemModel(
      id: 0,
      name: "Tab bar",
      subTitle: "iOS-style tab bar",
    ),
    ItemModel(
      id: 0,
      name: "Text fields",
      subTitle: "iOS-style text fields",
    )
  ];
  List<ItemModel> styleOtherList = [
    ItemModel(
        id: 0,
        name: "Motion",
        subTitle: 'All of the predefined transition patterns'),
    ItemModel(id: 1, name: 'Colors', subTitle: 'All of the predefined colors'),
    ItemModel(
        id: 2,
        name: 'Typography',
        subTitle: 'All of the predefined text style'),
    ItemModel(id: 3, name: "2D transformation", subTitle: 'Pan, zoom, rotate')
  ];

  void materialPageNavigate(id) {
    switch (id) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AppBarWidget()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BannerWidget()));
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              color: Colors.black,
              height: 150.0,
              child: const Text(
                "Flutter ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(36, 35, 50, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 50, top: 50),
                    child: Text(
                      "Gallary ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: mediaQueryData.size.width < 1050
                          ? LeesThenGallary1050(mediaQueryData: mediaQueryData)
                          : MorethenGallary1050(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(left: 50, top: 50),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    padding: EdgeInsets.zero,
                    scrollDirection: mediaQueryData.size.width < 1050
                        ? Axis.vertical
                        : Axis.horizontal,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: mediaQueryData.size.width < 1050
                          ? leesThen1050Category(
                              materialItemList: materialItemList,
                              cupertinoList: cupertinoList,
                              styleOtherList: styleOtherList)
                          : moreThen1050Category(
                              materialItemList: materialItemList,
                              cupertinoList: cupertinoList,
                              styleOtherList: styleOtherList,
                              cupertinoItemClick: (id) {},
                              materialItemClick: (id) {
                                materialPageNavigate(id);
                              },
                              styleOrOtherclick: (id) {},
                            ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class moreThen1050Category extends StatelessWidget {
  moreThen1050Category(
      {Key? key,
      required this.materialItemList,
      required this.cupertinoList,
      required this.styleOtherList,
      this.cupertinoItemClick,
      this.materialItemClick,
      this.styleOrOtherclick})
      : super(key: key);

  final List<ItemModel> materialItemList;
  final List<ItemModel> cupertinoList;
  final List<ItemModel> styleOtherList;
  Function? materialItemClick;
  Function? cupertinoItemClick;
  Function? styleOrOtherclick;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.zero,
              alignment: Alignment.center,
              height: 70,
              width: 350,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(47, 41, 59, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.add, color: Colors.white),
                  Text(
                    'Material',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              height: 350,
              width: 350,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(47, 41, 59, 1),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0))),
              child: ListView.builder(
                  itemCount: materialItemList.length,
                  itemBuilder: (ctx, i) => ListTile(
                        onTap: () {
                          materialItemClick!(materialItemList[i].id);
                        },
                        onLongPress: () {},
                        leading: const Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        subtitle: Text(
                          materialItemList[i].subTitle,
                          style: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w700),
                        ),
                        title: Text(
                          materialItemList[i].name,
                          style: const TextStyle(color: Colors.white),
                        ),
                      )),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
        Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 70,
              width: 350,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(47, 41, 59, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.add, color: Colors.white),
                  Text('Cupertino', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            Container(
              height: 350,
              width: 350,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(40, 34, 49, 1),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0))),
              child: ListView.builder(
                  itemCount: cupertinoList.length,
                  itemBuilder: (ctx, i) => ListTile(
                        onTap: () {
                          cupertinoItemClick!(cupertinoList[i].id);
                        },
                        subtitle: Text(
                          cupertinoList[i].subTitle,
                          style: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w700),
                        ),
                        leading: const Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        title: Text(cupertinoList[i].name,
                            style: const TextStyle(color: Colors.white)),
                      )),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
        Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 70,
              width: 350,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(47, 41, 59, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Text('Style & Other', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            Container(
              height: 350,
              width: 350,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(40, 34, 49, 1),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0))),
              child: ListView.builder(
                  itemCount: styleOtherList.length,
                  itemBuilder: (ctx, i) => ListTile(
                        onTap: () {
                          styleOrOtherclick!(styleOtherList[i].id);
                        },
                        subtitle: Text(
                          styleOtherList[i].name,
                        ),
                        leading: const Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        title: Text(
                          styleOtherList[i].name,
                          style: const TextStyle(color: Colors.white),
                        ),
                      )),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        )
      ],
    );
  }
}

class leesThen1050Category extends StatelessWidget {
  const leesThen1050Category({
    Key? key,
    required this.materialItemList,
    required this.cupertinoList,
    required this.styleOtherList,
  }) : super(key: key);

  final List<ItemModel> materialItemList;
  final List<ItemModel> cupertinoList;
  final List<ItemModel> styleOtherList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandedTileList.builder(
          padding: EdgeInsets.zero,
          itemCount: 1,
          maxOpened: 2,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, mIndex, controller) {
            return ExpandedTile(
              contentSeperator: 1.2,
              theme: const ExpandedTileThemeData(
                headerColor: Color.fromRGBO(47, 41, 59, 1),
                //headerRadius: 24.0,
                headerPadding: EdgeInsets.only(
                    left: 5.0, right: 25.0, top: 20, bottom: 20),
                headerSplashColor: Colors.white,
                //
                contentBackgroundColor: Color.fromRGBO(47, 41, 59, 1),
                //contentPadding: EdgeInsets.all(24.0),
                //contentRadius: 12.0,
              ),
              controller: mIndex == 2
                  ? controller.copyWith(isExpanded: true)
                  : controller,
              title: const Text(
                'Material',
                style: TextStyle(color: Colors.white),
              ),
              content: ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: materialItemList.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {},
                      onLongPress: () {},
                      leading: const Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      subtitle: Text(
                        materialItemList[index].subTitle,
                        style: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                      ),
                      title: Text(
                        materialItemList[index].name,
                        style: const TextStyle(color: Colors.white),
                      ),
                    );
                  }),
              onTap: () {
                debugPrint("tapped!!");
              },
              onLongTap: () {
                debugPrint("looooooooooong tapped!!");
              },
            );
          },
        ),
        ExpandedTileList.builder(
          padding: EdgeInsets.zero,
          itemCount: 1,
          maxOpened: 2,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, mIndex, controller) {
            return ExpandedTile(
              contentSeperator: 1.2,
              theme: const ExpandedTileThemeData(
                headerColor: Color.fromRGBO(47, 41, 59, 1),
                //headerRadius: 24.0,
                headerPadding: EdgeInsets.only(
                    left: 5.0, right: 25.0, top: 20, bottom: 20),
                headerSplashColor: Colors.white,
                //
                contentBackgroundColor: Color.fromRGBO(47, 41, 59, 1),
                //contentPadding: EdgeInsets.all(24.0),
                //contentRadius: 12.0,
              ),
              controller: mIndex == 2
                  ? controller.copyWith(isExpanded: true)
                  : controller,
              title: const Text(
                'Cupertino',
                style: TextStyle(color: Colors.white),
              ),
              content: ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: cupertinoList.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {},
                      onLongPress: () {},
                      leading: const Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      subtitle: Text(
                        cupertinoList[index].subTitle,
                        style: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                      ),
                      title: Text(
                        cupertinoList[index].name,
                        style: const TextStyle(color: Colors.white),
                      ),
                    );
                  }),
              onTap: () {
                debugPrint("tapped!!");
              },
              onLongTap: () {
                debugPrint("looooooooooong tapped!!");
              },
            );
          },
        ),
        ExpandedTileList.builder(
          padding: EdgeInsets.zero,
          itemCount: 1,
          maxOpened: 2,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, mIndex, controller) {
            return ExpandedTile(
              contentSeperator: 1.2,
              theme: const ExpandedTileThemeData(
                headerColor: Color.fromRGBO(47, 41, 59, 1),
                //headerRadius: 24.0,
                headerPadding: EdgeInsets.only(
                    left: 5.0, right: 25.0, top: 20, bottom: 20),
                headerSplashColor: Colors.white,
                //
                contentBackgroundColor: Color.fromRGBO(47, 41, 59, 1),
                //contentPadding: EdgeInsets.all(24.0),
                //contentRadius: 12.0,
              ),
              controller: mIndex == 2
                  ? controller.copyWith(isExpanded: true)
                  : controller,
              title: const Text(
                'Style & Other',
                style: TextStyle(color: Colors.white),
              ),
              content: ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: styleOtherList.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {},
                      onLongPress: () {},
                      leading: const Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      subtitle: Text(
                        styleOtherList[index].subTitle,
                        style: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                      ),
                      title: Text(
                        styleOtherList[index].name,
                        style: const TextStyle(color: Colors.white),
                      ),
                    );
                  }),
              onTap: () {
                debugPrint("tapped!!");
              },
              onLongTap: () {
                debugPrint("looooooooooong tapped!!");
              },
            );
          },
        )
      ],
    );
  }
}

class MorethenGallary1050 extends StatelessWidget {
  const MorethenGallary1050({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                //stops: [0.1, 0.5, 0.7, 0.9],
                colors: [
                  Color.fromARGB(255, 245, 245, 245),
                  Color.fromARGB(255, 252, 252, 252),
                ],
              ),
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8.0))),
          height: 280,
          width: 380,
          child: Image.asset(
            'assert/images/image1.jpeg',
            fit: BoxFit.contain,
          ),
        ),
        Card(
          elevation: 8.0,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            height: 280,
            width: 380,
            child: Image.asset(
              'assert/images/image2.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        Card(
          elevation: 8.0,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            height: 280,
            width: 380,
            child: Image.asset(
              'assert/images/image3.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        Card(
          elevation: 8.0,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            height: 280,
            width: 380,
            child: Image.asset(
              'assert/images/image4.jpeg',
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }
}

class LeesThenGallary1050 extends StatelessWidget {
  const LeesThenGallary1050({
    Key? key,
    required this.mediaQueryData,
  }) : super(key: key);

  final MediaQueryData mediaQueryData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          elevation: 8.0,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            height: 200,
            width: mediaQueryData.size.width,
          ),
        ),
        Card(
          elevation: 8.0,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            height: 200,
            width: mediaQueryData.size.width,
          ),
        ),
        Card(
          elevation: 8.0,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            height: 200,
            width: mediaQueryData.size.width,
          ),
        ),
        Card(
          elevation: 8.0,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            height: 200,
            width: mediaQueryData.size.width,
          ),
        )
      ],
    );
  }
}
