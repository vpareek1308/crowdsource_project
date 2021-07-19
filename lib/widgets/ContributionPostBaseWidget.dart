import 'package:flutter/material.dart';

class ContributionPostBaseWidget extends StatefulWidget {

  @override
  _ContributionPostBaseWidgetState createState() => _ContributionPostBaseWidgetState();
}

class _ContributionPostBaseWidgetState extends State<ContributionPostBaseWidget> {
  bool _liked = false;
  int likes = 355;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                "Name",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Image.asset(
            'lib/assets/images/photo1.jpg',
            width: double.infinity,
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: _liked ? Colors.redAccent : Colors.grey,
                  size: 30,
                ),
                onPressed: () => {
                  setState(() {
                    _liked = !_liked;
                    if(_liked) {
                      likes += 1;
                    }
                    else {
                      likes -= 1;
                    }
                  })
                },
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '$likes',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
