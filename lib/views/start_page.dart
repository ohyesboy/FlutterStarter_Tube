import 'package:flutter/material.dart';
import 'package:mytube1/app_styles.dart';
import 'package:mytube1/main.dart';
import 'package:mytube1/utils.dart';
import 'package:mytube1/views/base/tube_base_page.dart';
import 'package:mytube1/views/other_page.dart';
import 'package:mytube1/views/start_page_vm.dart';

class StartPage extends TubeBasePage {
  const StartPage({super.key});
  
  @override
  State<StartPage> createState() => _StartPageState() as State<StartPage>;
}

class _StartPageState extends TubeBasePageState<StartPage> {
  late StartPgaeVM vm;
  final txtSearch = TextEditingController(); 
  @override
  void initState() {
    super.initState();
    vm = StartPgaeVM(setState);
    title = "TUBE PLAER!";
  }

  @override
  Widget buildLeftHeaderButton(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OtherPage(),
              ));
        },
        icon: Icon(Icons.menu));
  }

  @override
  Widget buildBody() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
          children: [buildSearch(), Utils.paddingH(10), Expanded(child: buildList())]),
    );
  }

  Widget buildSearch() {
    return Container(
      decoration: BoxDecoration(color: kDarkColor,borderRadius: BorderRadius.all(Radius.circular(10)) ),
      child: TextField(
        onSubmitted: (value) async => await vm.search(value),
        controller: txtSearch,
        decoration: InputDecoration(
            hintText: 'Search ...',
            
            border: InputBorder.none,
            prefixIcon:InkWell(
              onTap: () async {
                await vm.search(txtSearch.text); 
              },
              child: Icon(Icons.search,color: Colors.white,)),
            // enabledBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.all(Radius.circular(10)))
                ),
      ),
    );
  }

  Widget buildList() {

    return ListView.builder(itemBuilder:(context, index) =>buildListItem(context, index), itemCount: vm.items.length,);
  }
  
  Widget buildListItem(BuildContext context, int index) {
    return Text('${vm.items[index].name}');
  }
}
