import 'package:flutter/material.dart';

import '../widgets/CommonDetailsAppBar.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({Key? key}) : super(key: key);
  late MediaQueryData mediaQueryData;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
                ),
                textAlign: TextAlign.center,
              ),
            ),
            CommonDetailsAppBar(
              onBackClick: () => Navigator.pop(context),
              codeShow: () {},
              fullScreenClick: () {},
              infoClick: () {},
            ),
            Container(
              height: 40,
              color: const Color.fromRGBO(36, 35, 50, 1),
            ),
            Container(
              padding: const EdgeInsets.only(left: 150, right: 100, top: 20),
              height: MediaQuery.of(context).size.height,
              color: const Color.fromRGBO(36, 35, 50, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'App Bar',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'The app bar provides content anc actions related to the \ncurrent screen. it`s used for branding, screen titles, \nnavigation, and action',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  if (mediaQueryData.size.width > 1200)
                    Container(
                      height: 600,
                      color: Colors.white,
                      width: 400,
                      child: Column(
                        children: [
                          AppBar(
                            title: const Text(
                              'Title',
                            ),
                            leading: IconButton(
                              tooltip: 'Leading Button',
                              icon: const Icon(Icons.menu),
                              onPressed: () {},
                            ),
                            centerTitle: true,
                            actions: [
                              IconButton(
                                tooltip: 'ActionButton',
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.card_travel,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                tooltip: 'ActionButton',
                                icon: const Icon(Icons.local_activity),
                              )
                            ],
                          )
                        ],
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
