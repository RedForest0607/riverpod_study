import 'package:flutter/material.dart';

class HistoryButtonWidget extends StatelessWidget {
  const HistoryButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          return Colors.grey.shade800;
        }),
        overlayColor: MaterialStateProperty.resolveWith((states) {
          return Colors.grey.shade700;
        }),
        padding: MaterialStateProperty.resolveWith((states) {
          return EdgeInsets.zero;
        }),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.timeline,
              color: Colors.white,
              size: MediaQuery.of(context).size.height *
                  MediaQuery.of(context).size.width *
                  0.000035),
          Padding(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.005, 0, 0, 0),
            child: Text(
              '히스토리',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  fontSize: MediaQuery.of(context).size.height *
                      MediaQuery.of(context).size.width *
                      0.00003),
            ),
          ),
        ],
      ),
    );
  }
}
