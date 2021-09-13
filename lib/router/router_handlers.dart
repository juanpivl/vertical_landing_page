import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landig_page/providers/page_provider.dart';
import 'package:vertical_landig_page/ui/pages/home_page.dart';

final homeHandler = Handler(handlerFunc: (context, params) {
  final page = params['page']!.first;

  if (page != '/') {
    final pageProvider = Provider.of<PageProvider>(context!, listen: false);
    pageProvider.createScrollControlelr(page);

    return HomePage();
  }
});
