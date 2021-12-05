import 'package:flutter/material.dart';

import '../../../theme.dart';

class InvitationCars extends StatelessWidget {
  const InvitationCars(
      {Key? key,
      // required this.image,
      required this.type,
      required this.name,
      required this.capacity})
      : super(key: key);

  // final String image;
  final String type;
  final String name;
  final String capacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: defaultMargin, right: defaultMargin, bottom: defaultMargin),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              'https://picsum.photos/100',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                type,
                style: secondaryTextStyle,
              ),
              Text(
                name,
                style: primaryTextStyle.copyWith(
                    fontWeight: semiBold, fontSize: 18),
              ),
              Text(
                capacity,
                style:
                    priceTextStyle.copyWith(fontSize: 14, fontWeight: medium),
              )
            ],
          ))
        ],
      ),
    );
  }
}
