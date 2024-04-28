import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_app/core/theming/colors.dart';
import 'package:space_app/core/theming/styles.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatefulWidget {
  const WebView({
    super.key,
    required this.webViewUrl,
  });

  final String webViewUrl;

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  late final WebViewController _controller;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(Uri.parse(widget.webViewUrl))
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (url) {
            setState(() {
              _isLoading = false;
            });
          },
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "SpaceX",
          style: TextStyles.font24BlackBold,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: 20.h),
        child: _isLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.black,
                ),
              )
            : WebViewWidget(
                controller: _controller,
              ),
      ),
    );
  }
}
