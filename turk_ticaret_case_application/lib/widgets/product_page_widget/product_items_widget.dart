import 'package:flutter/material.dart';
import 'package:turk_ticaret_case_application/widgets/sub_text.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        for (int i = 1; i < 10; i++)
          Container(
            //padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    //  margin: EdgeInsets.all(10),

                    height: 202,
                    width: 176,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://s3-alpha-sig.figma.com/img/45e7/ad37/249757341df01d7cc7ca2def9f88911a?Expires=1668384000&Signature=P-h5BfeZgf7lWwFCCQszptwzqtQHl-2w6X3i6fMzRqBxL-UIed-0t97rr1YdBiIgRzEB3MybloKDa6snBmCYdiORC0rADagpb4t8XpBX61b2PbV7E9CFlL~N~T1Xx-SDsLs3BrLJJD-X6yDEis0iLqyplOeI5S1z8rnREfbjHGExAaed1DNQmAhC8622i6Pco~brJ~Qdlu6I~5AjhQ2sX~IZd5iVUXa2EUwyePB-0a7FxAsRKu72d6fbNdoLB6aZD8CPTqXlnOfqJ5SKI4fYZuXxIrKjX0hfH4rowbr20mte0iO3o3Milk2Ki26G8Db7tw7twdTwNZtnuJ3epcsk4w__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
                            fit: BoxFit.fill)),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 8, top: 8),
                  child: SubTextWidget(
                    subTitle: "Avocado Coffee",
                    size: 14,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 8),
                  child: SubTextWidget(
                    subTitle: "34.00",
                    size: 14,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
