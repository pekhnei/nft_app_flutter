import 'package:flutter/material.dart';

import '../components/nft_card.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NftCard(
      imagePath: 'lib/images/apiens_3.png',
    );
  }
}
