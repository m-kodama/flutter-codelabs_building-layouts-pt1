import 'package:flutter/material.dart';
import 'package:flutter_codelab_1/core/consts.dart';

class DetailsRatingBar extends StatelessWidget {
  DetailsRatingBar({Key? key}) : super(key: key);

  final sampleRatingData = {
    'Rating': '4.6',
    'Price': '1,200円',
    'Open': '24時間',
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          sampleRatingData.entries.length,
          (index) => Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.withOpacity(0.2),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text(
                  sampleRatingData.entries.elementAt(index).key,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  sampleRatingData.entries.elementAt(index).value,
                  style: const TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
