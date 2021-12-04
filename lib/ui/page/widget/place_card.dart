import 'package:flutter/material.dart';
import 'package:yob/theme.dart';

class PlaceCard extends StatefulWidget {
  const PlaceCard({Key? key}) : super(key: key);

  @override
  _PlaceCardState createState() => _PlaceCardState();
}

class _PlaceCardState extends State<PlaceCard> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.network(
                  'https://picsum.photos/230/200',
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                'Nama tempat',
                style:
                    subtitleTextStyle.copyWith(fontWeight: bold, fontSize: 16),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                  Text(
                    'Lokasi',
                    style: subtitleTextStyle,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Deskripsi.....',
                style: subtitleTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
