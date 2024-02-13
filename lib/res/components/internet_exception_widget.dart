import 'package:flutter/material.dart';
import 'package:getx_mvvm/res/colors/app_color.dart';
import 'package:getx_mvvm/utils/utils.dart';

class InternetExceptionWidget extends StatefulWidget {
  final VoidCallback press;
  const InternetExceptionWidget({super.key, required this.press});

  @override
  State<InternetExceptionWidget> createState() =>
      _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(Icons.wifi_off, size: 100, color: AppColor.redColor),
            const SizedBox(height: 10),
            const Text('No Internet Connection',
                style: TextStyle(fontSize: 20, color: AppColor.redColor)),
            const SizedBox(height: 10),
            const Text('Please check your internet connection and try again',
                style: TextStyle(fontSize: 16, color: AppColor.redColor)),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: widget.press,
              child: const Text('Retry'),
            ),
          ],
        ));
  }
}
