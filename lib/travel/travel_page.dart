import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TravelPage extends StatefulWidget {
  const TravelPage({Key? key}) : super(key: key);

  @override
  State<TravelPage> createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> with TickerProviderStateMixin {
  final imageUrl =
      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500';

  final pic1 =
      "https://images.unsplash.com/photo-1533929736458-ca588d08c8be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60";

  final pic2 =
      "https://images.unsplash.com/photo-1582050041567-9cfdd330d545?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60";

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.purple400,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: VStack([
            VxBox().size(20, 2).white.make(),
            5.heightBox,
            VxBox().size(28, 2).white.make(),
            5.heightBox,
            VxBox().size(15, 2).white.make(),
          ]).pOnly(left: 16, top: 16)),
      body: VStack([
        VxBox(
                child: [
          VxBox()
              .square(100)
              .roundedFull
              .neumorphic(color: Vx.purple400, elevation: 30)
              .bgImage(DecorationImage(image: NetworkImage(imageUrl)))
              .make(),
          "Hi, "
              .richText
              .withTextSpanChildren(["Sahil".textSpan.bold.make()])
              .white
              .xl2
              .make()
              .p8(),
          "Solo Traveller".text.white.make(),
          VxTextField(
            borderType: VxTextFieldBorderType.none,
            borderRadius: 18,
            hint: "Search",
            fillColor: Vx.gray200.withOpacity(0.3),
            contentPaddingTop: 13,
            prefixIcon: const Icon(Icons.search_outlined, color: Colors.white),
          )
              .customTheme(themeData: ThemeData(brightness: Brightness.dark))
              .cornerRadius(10)
              .p16()
        ].column())
            .makeCentered()
            .h32(context),
        ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: VxBox(
            child: VStack([
              TabBar(
                  tabs: const [
                    Icon(Icons.map, size: 30),
                    Icon(Icons.pin_drop, size: 30),
                    Icon(Icons.restaurant, size: 30),
                    Icon(Icons.person, size: 30)
                  ],
                  indicatorColor: Colors.purple,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Vx.purple500,
                  unselectedLabelColor: Vx.gray400,
                  labelPadding: Vx.m12,
                  controller: _tabController),
              TabBarView(
                controller: _tabController,
                children: ["1", "2", "3", "4"]
                    .map((e) => VStack([
                          "Discover places in London"
                              .text
                              .gray500
                              .xl2
                              .bold
                              .make(),
                          20.heightBox,
                          HStack([
                            Image.network(
                              pic1,
                              fit: BoxFit.cover,
                            )
                                .wh(context.percentWidth * 35, 100)
                                .cornerRadius(10),
                            5.widthBox,
                            VStack([
                              "Tower Bridge".text.semiBold.make(),
                              3.heightBox,
                              "Southwork".text.make().shimmer(),
                              5.heightBox,
                              [
                                VxRating(size: 15, onRatingUpdate: (value) {}),
                                5.widthBox,
                                "(100)".text.xs.gray500.make()
                              ].row()
                            ], crossAlignment: CrossAxisAlignment.start)
                                .expand()
                          ]).cornerRadius(8).backgroundColor(Vx.gray200),
                        ]).p16())
                    .toList(),
              ).expand(),
            ]),
          ).white.make(),
        ).expand()
      ]),
    );
  }
}

class TravelCard extends StatelessWidget {
  const TravelCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
