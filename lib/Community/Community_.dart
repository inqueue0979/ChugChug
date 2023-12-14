class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Top_Logos("Community", 16),
          actions: [...], // 나머지 액션 버튼들
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: "글"),
              Tab(text: "모임"),
            ],
          ),
        ),
        body: TabBarView(
            controller: _tabController,
            children: [
            // "글" 섹션의 내용
            글Section(),
        // "모임" 섹션의 내용
        모임Section(),
    ],
    ),
    floatingActionButton: FloatingActionButton(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => PostAddPage(),
    ),
    );
    },
    child: Icon(Icons.edit),
    ),
    );
  }
}

class 글Section extends StatelessWidget {
@override
Widget build(BuildContext context) {
// 현재 "글" 섹션의 내용을 여기에 배치

}
}

class 모임Section extends StatelessWidget {
@override
Widget build(BuildContext context) {
// "모임" 섹션의 내용을 여기에 배치
}
}
