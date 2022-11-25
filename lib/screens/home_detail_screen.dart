import 'package:basic_flutter/models/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailScreen extends StatelessWidget {
  final Item catalog;

  const HomeDetailScreen({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "Tk. ${catalog.price}".text.bold.xl4.red500.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  context.theme.buttonColor,
                ),
                shape: MaterialStateProperty.all(
                  const StadiumBorder(),
                ),
              ),
              child: Row(
                children: [
                  const Icon(CupertinoIcons.add),
                  const SizedBox(width: 5),
                  "Cart".text.lg.make(),
                ],
              ),
            ).wh(100, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(
                catalog.id.toString(),
              ),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 20.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl2
                          .color(context.accentColor)
                          .bold
                          .make(),
                      catalog.desc.text.lg
                          .textStyle(context.captionStyle)
                          .make(),
                      10.heightBox,
                      "If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet."
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .p20()
                    ],
                  ).py64(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
