import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mytube1/app_styles.dart';
import 'package:mytube1/main.dart';
import 'package:mytube1/utils.dart';
import 'package:mytube1/views/base/tube_base_page.dart';
import 'package:mytube1/views/other_page.dart';
import 'package:mytube1/views/start_page_vm.dart';

class StartPage extends TubeBasePage {
  @override
  State<StartPage> createState() => _StartPageState() as State<StartPage>;
}

class _StartPageState extends TubeBasePageState<StartPage> {
  late StartPgaeVM vm;
  final txtSearch = TextEditingController();
  @override
  void initState() {
    super.initState();
    vm = StartPgaeVM(setState: setState);
    widget.title = "TUBE PLAER!";
  }

  @override
  Widget buildLeftHeaderButton(BuildContext context) {
    return IconButton(onPressed: () {}, icon: Icon(Icons.menu));
  }

  @override
  Widget buildBody() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        buildSearch(),
        Utils.paddingH(10),
        Expanded(child: buildList())
      ]),
    );
  }

  Widget buildSearch() {
    return Container(
      decoration: BoxDecoration(
          color: kDarkColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: TextField(
        onSubmitted: (value) async => await vm.search(value),
        controller: txtSearch,
        decoration: InputDecoration(
          hintText: 'Search ...',

          border: InputBorder.none,
          prefixIcon: InkWell(
              onTap: () async {
                await vm.search(txtSearch.text);
              },
              child: Icon(
                Icons.search,
                color: Colors.white,
              )),
          // enabledBorder: OutlineInputBorder(
          //     borderRadius: BorderRadius.all(Radius.circular(10)))
        ),
      ),
    );
  }

  Widget buildList() {
    return ListView.builder(
      itemBuilder: (context, index) => buildListItem(context, index),
      itemCount: vm.items.length,
    );
  }

  Widget buildListItem(BuildContext context, int index) {
    var item = vm.items[index];
    return Card(
      color: kCardFillColor,
      elevation: 8,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          AspectRatio(
            aspectRatio: 9 / 5,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (_) => OtherPage(
                              item: item,
                            )));
              },
              child: CachedNetworkImage(
                  imageUrl: item.imgUrl,
                  placeholder: (context, url) =>
                      Center( child: const CircularProgressIndicator()),
                  imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(image: imageProvider),
                            borderRadius:BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(color: Colors.black, spreadRadius: 2,blurRadius: 4,offset: Offset(0, 2))
                            ]
                            ),
                      )),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text(item.channelName, style: kMediumLightText18,),
                    Text(item.title, style: kRegularLightText14, maxLines: 1, overflow: TextOverflow.ellipsis,),
                  ],
                ),
              ),
              Utils.paddingW(12),
              Icon(Icons.arrow_forward_ios, size: 16,)
            ],
          )
        ]),
      ),
    );
  }
}
