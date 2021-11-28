import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoScreen extends  StatefulWidget {
  final String name, videourl;


  VideoScreen(this.name, this.videourl);

  @override

  _VideoScreenState createState() => _VideoScreenState();
}


class _VideoScreenState extends State<VideoScreen> {
  late BetterPlayerController  _betterPlayerController;
  GlobalKey _betterPlayerKey = GlobalKey();




  @override
  void initState(){
    BetterPlayerConfiguration betterPlayerConfiguration = BetterPlayerConfiguration(
      aspectRatio: 16/9,
      fit: BoxFit.contain
    );
    BetterPlayerDataSource dataSource = BetterPlayerDataSource(BetterPlayerDataSourceType.network, widget.videourl);
   _betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
    _betterPlayerController.setupDataSource(dataSource);
    _betterPlayerController.setBetterPlayerGlobalKey(_betterPlayerKey);

    super.initState();
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Column(children: [
        const SizedBox(height: 8,),
        Expanded(child: AspectRatio(aspectRatio: 16/9,
          child: BetterPlayer(
            key: _betterPlayerKey,
            controller: _betterPlayerController,
          ),
          
        ))
      ],),
    );
  }
}
