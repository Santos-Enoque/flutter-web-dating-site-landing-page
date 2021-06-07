import 'package:flutter/material.dart';
import 'package:flutter_web_example/helpers/style.dart';

class MobileMenu extends StatelessWidget {
  const MobileMenu({ Key key }) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: active,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              InkWell(
                onTap: () {},
                child: Text(
                  'Pricing',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © 2020 | Santos Enoque',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}