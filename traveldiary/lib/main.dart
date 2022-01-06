import 'package:flutter/material.dart';
import 'package:traveldiary/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel UI',
      theme: appTheme,
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(shrinkWrap: true, children: [
          Row(
            children: [
              Text(
                "travelogram",
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 20, fontWeight: FontWeight.w800),
              ),
              const Expanded(child: SizedBox()),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.grey,
                  size: 30,
                ),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("lib/assets/images/chris.jpg"),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Transform.rotate(
                  angle: 45,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(5),
                    child: const Icon(
                      Icons.navigation,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("maldives trip 2018".toUpperCase(),
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Colors.grey,
                            )),
                    Text("Add an Update",
                        style: Theme.of(context).textTheme.bodyText1)
                  ],
                ),
                const Expanded(child: SizedBox()),
                const Icon(
                  Icons.navigate_next,
                  color: Colors.grey,
                  size: 30,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          PicGrid(
            header: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "from the community".toUpperCase(),
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Colors.grey,
                      ),
                ),
                Text(
                  "View All",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: Colors.blue),
                )
              ],
            ),
            image1: "lib/assets/images/beach1.jpg",
            image2: "lib/assets/images/beach2.jpg",
            image3: "lib/assets/images/beach3.jpg",
            additional: 50,
          )
        ]),
      ),
    );
  }
}

class PicGrid extends StatelessWidget {
  const PicGrid(
      {Key? key,
      required this.header,
      required this.image1,
      required this.image2,
      required this.image3,
      required this.additional})
      : super(key: key);

  final Widget header;
  final String image1;
  final String image2;
  final String image3;
  final int additional;
  @override
  Widget build(BuildContext context) {
    final maxWidgetHeight = MediaQuery.of(context).size.height * 1 / 2;
    return LimitedBox(
      // The incomming height is uncontrained as we are in a list view. Hence we use limited box,
      // This is beacuse we want to tell the row to take up the remaining width and height.
      // If this was ommited the flexible-row would get infinite vertical space and throw an error
      maxHeight: maxWidgetHeight,
      child: LayoutBuilder(builder: (context, constraints) {
        print("${constraints.maxHeight}");
        print("${constraints.minHeight}");
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header,
            const SizedBox(
              height: 10,
            ),
            Flexible(
              // We use this as we want to tell the next column to take up the rest of the vertical space.
              // If we did not do this the row would have unbounded vertical space (as it is a non-flex child of the column parent).
              // And then pass this height to its children
              // Due to this the column in the "Expanded [denoted 'here']" widget would have infinite height if this was ommited.
              // As the expanded says "Take up the remainig space" the column child would have infinite height
              child: Row(children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1 / 2.5,
                  height: maxWidgetHeight,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(image1),
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                Expanded(
                  // here - The expanded tells the column to take up remaining width and height within the row
                  child: LayoutBuilder(builder: (context, constraints) {
                    print("${constraints.maxHeight}");
                    print("${constraints.minHeight}");
                    print(" width - ${constraints.minWidth}");
                    print(" width - ${constraints.maxWidth}");
                    return Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(image2),
                              ),
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: Stack(children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(image3),
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '+' + additional.toString(),
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        )
                      ],
                    );
                  }),
                )
              ]),
            ),
          ],
        );
      }),
    );
  }
}
