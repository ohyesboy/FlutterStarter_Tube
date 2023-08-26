
import 'package:mytube1/models/item.dart';
import 'package:mytube1/views/base/base_vm.dart';

class StartPgaeVM extends BaseVM {
  bool isBusyLoadingMore = false;
  List<Item> items = [];
  search(String value) async {
    items = [];

    for (var i = 0; i < 5; i++) {
      items.add(Item(
          title: '埃及人先婚後戀？沒有結婚證去酒店開不了房！一夫多妻合法但卻很少有人這麼做？｜埃及Nancy',
          channelName: 'Nancy',
          imgUrl:
              'https://i.ytimg.com/vi/JufMpZwNbTg/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAb2yWONdFlxUOELS6vDwj5IlXyNA'));
    }

    notifyListeners();
  }

  addMore() async {
    if(isBusyLoadingMore)
      return;
    isBusyLoadingMore = true;
    notifyListeners();
    await Future.delayed(Duration(seconds: 1));
    for (var i = 0; i < 1; i++) {
      items.add(Item(
          title: 'PARADISE IN THAILAND 🏝 | Layan Beach (Part 2)',
          channelName: 'Juan Carlos MT 马志轩',
          imgUrl:
              'https://i.ytimg.com/vi/Zvqo0ePnAac/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCHMRHzoqQ0OCHZcBiUlDIz7-_dsw'));
    }
    isBusyLoadingMore = false;
    notifyListeners();
  }

  StartPgaeVM({required setState}) : super(setState: setState) {}
}
