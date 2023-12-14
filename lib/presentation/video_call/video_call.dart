import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class VideoCall extends StatefulWidget {
  const VideoCall({super.key});

  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  final AgoraClient _client = AgoraClient(
      agoraConnectionData: AgoraConnectionData(
          appId: 'b61a997d0e9649e69f0af29e324c8c4a',
          channelName: "sample",
          tempToken:
              '007eJxTYPheFpYdc/E6b9VeWcGe4rITe46cei5ZvjWY6813sYtmcTIKDElmhomWluYpBqmWZiaWqWaWaQaJaUaWqcZGJskWySaJu55VpjYEMjKsOlfGwAiFID4bQ3FibkFOKgMDAOY6IeA='));
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initAgora();
  }

  Future<void> _initAgora() async {
    await _client.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        child: Scaffold(
          appBar: AppBar(
            leading: const SizedBox(),
            title: const Text("Video Call"),
          ),
          body: SafeArea(
              child: Stack(
            children: [
              AgoraVideoViewer(
                client: _client,
                layoutType: Layout.floating,
                showNumberOfUsers: true,
              ),
              AgoraVideoButtons(
                client: _client,
                enabledButtons: const [
                  BuiltInButtons.toggleCamera,
                  BuiltInButtons.callEnd,
                  BuiltInButtons.toggleMic,
                  BuiltInButtons.switchCamera
                ],
              ),
            ],
          )),
        ));
  }
}
