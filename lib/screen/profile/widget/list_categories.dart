import 'package:flutter/material.dart';

class ListCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text("Category"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            shrinkWrap: true,
            primary: false,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(top: 10.0),
            itemCount: 5,
            itemBuilder: (context, index) {
              return buildItem();
            },
          ),
        ),
      ],
    );
  }

  Container buildItem() {
    return Container(
      padding: EdgeInsets.all(4),
      child: Row(
        children: [
          Checkbox(
            value: false,
            onChanged: (value) {},
          ),
          SizedBox(width: 8),
          Text("UniFrom Pants",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                color: Colors.black,
              )),
        ],
      ),
    );
  }
}
