import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(
              MdiIcons.doorOpen,
              size: 64.0,
              color: Color(0xff263238),
            ),
          ),
          const SizedBox(
            width: 4.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Trackmate",
                style: GoogleFonts.blackOpsOne(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff263238),
                ),
              ),
              const SizedBox(
                height: 6.0,
              ),
              Container(
                transform: Matrix4.translationValues(0.0, -10, 0),
                child: Text(
                  "Online Attendance",
                  style: GoogleFonts.blackOpsOne(
                    fontSize: 12.0,
                    color: Color(0xff263238),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
