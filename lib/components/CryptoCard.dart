import 'package:flutter/material.dart';

class CryptoCard extends StatefulWidget {
  final String? coinName;

  const CryptoCard({this.coinName});

  @override
  State<CryptoCard> createState() => _CryptoCardState();
}

class _CryptoCardState extends State<CryptoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.1),
        ),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(100),
            ),
            margin: const EdgeInsets.only(right: 10),
            child: const Image(
              image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/96px-Bitcoin.svg.png?20140331024207'),
              width: 30,
              height: 30,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Bitcoin',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      '31247.95',
                      style: TextStyle(color: Colors.greenAccent, fontSize: 20),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'BTC',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '+47.95 (+0.01%)',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
