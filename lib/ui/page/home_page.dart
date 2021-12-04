import 'package:flutter/material.dart';
import 'package:yob/ui/page/widget/invitation_card.dart';
import 'package:yob/ui/page/widget/place_card.dart';

import '../../theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        children: [
          _header(),
          _categories(),
          _popularTittle(),
          _popularPlace(),
          _invitationTittle(),
          _invitations()
        ],
      ),
    );
  }

  _header() {
    return Container(
      margin: EdgeInsets.only(
          top: defaultMargin, left: defaultMargin, right: defaultMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hallo Alex',
                style: subtitleTextStyle.copyWith(
                    fontSize: 24, fontWeight: semiBold),
              ),
              Text(
                '@alexkeinn',
                style: subtitleTextStyle.copyWith(fontSize: 16),
              )
            ],
          ),
          Container(
            width: 54,
            height: 54,
            decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/icons/yob_logo.png'))),
          )
        ],
      ),
    );
  }

  _categories() {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: primaryColor),
              child: Text(
                'Semua Olahraga',
                style:
                    primaryTextStyle.copyWith(fontSize: 13, fontWeight: medium),
              ),
            ),
            sportType('Futsal'),
            sportType('Sepak Bola'),
            sportType('Bola Basket'),
            sportType('Bulu Tangkis'),
            sportType('Volly'),
            sportType('Renang')
          ],
        ),
      ),
    );
  }

  Container sportType(String name) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: subtitleColorText),
          color: Colors.transparent),
      child: Text(
        name,
        // style: primaryTextStyle.copyWith(fontSize: 13, fontWeight: medium),
      ),
    );
  }

  _popularTittle() {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin, left: defaultMargin),
      child: Text('Tempat Terpopuler',
          style:
              subtitleTextStyle.copyWith(fontSize: 22, fontWeight: semiBold)),
    );
  }

  _popularPlace() {
    return Container(
      margin: const EdgeInsets.only(top: 14),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Row(
              children: const [
                PlaceCard(),
                PlaceCard(),
                PlaceCard(),
                PlaceCard()
              ],
            )
          ],
        ),
      ),
    );
  }

  _invitationTittle() {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin, left: defaultMargin),
      child: Text('Yuk Join!',
          style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold)),
    );
  }

  _invitations() {
    return Container(
      margin: const EdgeInsets.only(top: 14),
      child: Column(
        children: const [
          InvitationCars(
            type: 'Sepak Bola',
            name: 'Nama Tempat, Lokasi',
            capacity: 'jumlah orang',
          ),
          InvitationCars(
            type: 'Bulu Tangkis',
            name: 'Nama Tempat, Lokasi',
            capacity: '\jumlah orang',
          ),
          InvitationCars(
            type: 'Bola Basket',
            name: 'Nama Tempat, Lokasi',
            capacity: 'jumlah orang',
          ),
          InvitationCars(
            type: 'Renang',
            name: 'Nama Tempat, Lokasi',
            capacity: 'jumlah orang',
          )
        ],
      ),
    );
  }
}
