
import 'package:flutter/material.dart';

import '../ui/Utils/textStyle.dart';

class TearmsandConditions extends StatelessWidget {
  const TearmsandConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "By signing up you agree with our",
              style: screenSubTitleStyle,
            ),
            Text(
              "Tearms and conditions",
              style: screenSubTitleStyle,
            ),
          ],
        ));
  }
}
