import 'package:flutter/material.dart';

class CustomPaginationList extends StatefulWidget {
  const CustomPaginationList({super.key});

  @override
  _CustomPaginationListState createState() => _CustomPaginationListState();
}

class _CustomPaginationListState extends State<CustomPaginationList> {
  final ScrollController _scrollController = ScrollController();
  int _currentPage = 0;
  final int _pageSize = 10;
  final List<int> _items = [];

  @override
  void initState() {
    super.initState();
    _loadMore();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _loadMore();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _loadMore() async {
    final int nextPage = _currentPage + 1;
    final List<int> newItems =
        List.generate(_pageSize, (index) => index + nextPage * _pageSize);
    setState(() {
      _items.addAll(newItems);
      _currentPage = nextPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Pagination List'),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: _items.length + 1,
        itemBuilder: (context, index) {
          if (index == _items.length) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListTile(
            title: Text('Item ${_items[index]}'),
          );
        },
      ),
    );
  }
}
