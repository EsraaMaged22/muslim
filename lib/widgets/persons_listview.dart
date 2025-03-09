import 'package:flutter/material.dart';
import 'package:muslim/widgets/person_card.dart';

class PersonsListView extends StatelessWidget {
  const PersonsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 181,
      child: ListView.builder(
        itemBuilder: (context,index){
          return  const Padding(
            padding: EdgeInsets.only(left: 16,right: 16),
            child: PersonCard(),
          );
        },
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }
}
