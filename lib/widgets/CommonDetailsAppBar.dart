import 'package:flutter/material.dart';

class CommonDetailsAppBar extends StatelessWidget {
  CommonDetailsAppBar({
    Key? key,
    required this.onBackClick,
    required this.codeShow,
    required this.fullScreenClick,
    required this.infoClick,
  }) : super(key: key);
  Function? onBackClick;
  Function? infoClick;
  Function? fullScreenClick;
  Function? codeShow;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppBar().preferredSize.height,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(36, 35, 50, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 150, right: 100, top: 20),
            child: Row(children: [
              InkWell(
                splashColor: Colors.white,
                onTap: () {
                  onBackClick!();
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.info,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 20),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.code,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 20),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.copy,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 20),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.fullscreen,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 20),
            ]),
          ),
        ],
      ),
    );
  }
}
