import 'package:flutter/material.dart';
import 'package:wallet_ui/src/models/credit_card_model.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key, required this.card}) : super(key: key);
  final CreditCardModel card;
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Material(
      elevation: 1,
      shadowColor: Colors.grey.shade300,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            width: media.width - 40,
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Card no.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  card.cardNo,
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Expires",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(card.expiryDate,
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.bold,
                            ))
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: Container(
              height: 25,
              width: 50,
              color: Colors.pink,
              padding: const EdgeInsets.all(7),
              child: Image.network(
                card.logo,
                width: 50,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
