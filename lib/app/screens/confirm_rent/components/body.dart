import 'package:clepy/app/models/rent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:clepy/app/utils/size_config.dart';

import 'rent_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(
          inputWidth: 20,
        ),
      ),
      child: ListView.builder(
        itemCount: demoRent.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            key: Key(
              demoRent[index].product.id.toString(),
            ),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(
                () {
                  demoRent.removeAt(index);
                },
              );
            },
            background: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  const Spacer(),
                  SvgPicture.asset("assets/icons/Trash.svg"),
                ],
              ),
            ),
            child: RentCard(rent: demoRent[0]),
          ),
        ),
      ),
    );
  }
}