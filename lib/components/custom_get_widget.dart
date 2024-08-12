import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class CustomGetWidget extends StatelessWidget {
  final String title;
  final String description;

  const CustomGetWidget({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 8),
            Text(description),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GFButton(
                  onPressed: () {},
                  text: "Primary Button",
                  color: CustomTheme.primaryColor,
                ),
                GFButton(
                  onPressed: () {},
                  text: "Secondary Button",
                  color: CustomTheme.secondaryColor,
                ),
              ],
            ),
            const SizedBox(height: 16),
            GFProgressBar(
              percentage: 0.7,
              lineHeight: 20,
              alignment: MainAxisAlignment.spaceBetween,
              child: const Text('70%', textAlign: TextAlign.end),
              progressBarColor: CustomTheme.primaryColor,
            ),
            const SizedBox(height: 16),
            GFToggle(
              onChanged: (val) {},
              value: true,
              enabledTrackColor: CustomTheme.primaryColor,
            ),
            const SizedBox(height: 16),
            GFRadio(
              size: GFSize.SMALL,
              value: 1,
              groupValue: 1,
              onChanged: (value) {},
              inactiveIcon: null,
              activeBorderColor: CustomTheme.secondaryColor,
              radioColor: CustomTheme.secondaryColor,
            ),
            const SizedBox(height: 16),
            GFCard(
              boxFit: BoxFit.cover,
              titlePosition: GFPosition.start,
              image: Image.network(
                'https://via.placeholder.com/150',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              showImage: true,
              title: GFListTile(
                avatar: GFAvatar(
                  backgroundImage: NetworkImage('https://via.placeholder.com/50'),
                ),
                titleText: 'Card Title',
                subTitleText: 'Card Subtitle',
              ),
              content: Text("This is the content of the GFCard."),
              buttonBar: GFButtonBar(
                children: <Widget>[
                  GFButton(
                    onPressed: () {},
                    text: 'Buy',
                  ),
                  GFButton(
                    onPressed: () {},
                    text: 'Cancel',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
