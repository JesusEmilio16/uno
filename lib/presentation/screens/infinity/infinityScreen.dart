import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomImg extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;
  const CustomImg({
    super.key,
    required this.url,
    this.width = 100,
    this.height = 100,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
      placeholder: 'assets/images/Loading_icon.gif',
      image: url,
      height: height,
      width: width,
      fit: BoxFit.cover,
      fadeOutDuration: const Duration(milliseconds: 600),
      imageErrorBuilder: (context, error, stackTrace) {
        return Image.asset(
          'assets/images/error.png',
          height: height,
          width: width,
          fit: BoxFit.cover,
        );
      },
    );
  }
}

class InfinityScreen extends StatefulWidget {
  const InfinityScreen({super.key});

  @override
  State<InfinityScreen> createState() => _InfinityScreenState();
}

class _InfinityScreenState extends State<InfinityScreen> {
  List<int> imagesId = [1, 2, 3, 4, 5];
  final ScrollController _scrollController = ScrollController();
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        _load();
      }
    });
  }

  Future<void> _load() async {
    if (isLoading) return;
    setState(() {
      isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 2));

    final next = List.generate(5, (i) => imagesId.length + i);

    setState(() {
      imagesId.addAll(next);
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: imagesId.length + (isLoading ? 1 : 0),
          itemBuilder: (context, index) {
            if (imagesId.length == index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
              );
            }

            return SizedBox(
              width: screen.width,
              height: 300,
              child: CustomImg(
                url: 'https://picsum.photos/id/${imagesId[index]}/1080/1920',
              ),
            );
          },
        ),
      ),
    );
  }
}
