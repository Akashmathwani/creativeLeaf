import "package:flutter/material.dart";

List<Map<String, String>> content = [
  {"image": "assets/images/i1.jpg", "title": "first one"},
  {"image": "assets/images/i3.jpg", "title": "first one"},
  {"image": "assets/images/i4.jpg", "title": "first one"},
  {"image": "assets/images/i5.jpg", "title": "first one"},
  {"image": "assets/images/i7.jpg", "title": "first one"},
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView.builder(
      physics: AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return buildContentItem(context, index);
      },
    );
  }

  List<Widget> _buildContentItems(BuildContext context) {
    List<Widget> items = List<Widget>();
    Size size = MediaQuery.of(context).size;

    print(content[0]["image"]);
    for (var i = 0; i < content.length; i++) {
      Widget item = Container(
        height: 200,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(content[i]["image"]),
            fit: BoxFit.cover,
          ),
        ),
      );
      items.add(item);
    }
    return items;
  }

  Widget buildContentItem(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    if (index >= content.length) return null;
    return Container(
      height: 200,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(content[index]["image"]),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
