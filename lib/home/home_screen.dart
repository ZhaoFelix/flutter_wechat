import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<NavigationIconView> _navigationViews;
  //该方法只会被调用一次；
   void initState() { 
    super.initState();
    _navigationViews = [
      NavigationIconView(
        title: '微信',
        icon: Icon(Icons.ac_unit),
        activeIcon: Icon(Icons.access_alarm)
      ),
      NavigationIconView(
        title: '通讯录',
        icon: Icon(Icons.ac_unit),
        activeIcon: Icon(Icons.access_alarm)
      ),
      NavigationIconView(
        title: '发现',
        icon: Icon(Icons.ac_unit),
        activeIcon: Icon(Icons.access_alarm)
      ),
      NavigationIconView(
        title: '我',
        icon: Icon(Icons.ac_unit),
        activeIcon: Icon(Icons.access_alarm)
      ),
    ];
  }  

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavBar = BottomNavigationBar(
      items:_navigationViews.map((NavigationIconView view){
        return view.item;
      }).toList(),
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      onTap: (int index){
        
        print("点击的是第$index个tab");
      },
    );
     return Scaffold(
       appBar: AppBar(
         title: Text('微信'),
       //  backgroundColor: Color(0xff303030),
       actions: <Widget>[
         IconButton(
           icon: Icon(Icons.search),
           onPressed: (){
             print('搜索');
           },
         ),
         IconButton(
           icon: Icon(Icons.add),
           onPressed: (){
             print('添加');
           },
         )

       ],
       ),
       body: Container(
        color: Colors.red,
       ),
       bottomNavigationBar: bottomNavBar,
     );
  }
}


class NavigationIconView {
  final String _title;
  final Widget _icon;
  final Widget _activeIcon;
  final  BottomNavigationBarItem item;
  NavigationIconView({Key key,String title,Widget icon,Widget activeIcon}) :
  _title = title,
  _icon = icon,
  _activeIcon = activeIcon,
  item = new BottomNavigationBarItem(
    icon: icon,
    activeIcon: activeIcon,
    title: Text(title),
    backgroundColor: Colors.white
  );
}