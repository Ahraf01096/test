import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1/core/utils/screens.dart';
import 'package:task1/features/authentication/presentation/components/default_button.dart';

class VerifySuccess extends StatelessWidget {
  const VerifySuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * .05),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height * .3),
              SvgPicture.asset("assets/images/check.svg"),
              SizedBox(height: MediaQuery.sizeOf(context).height * .03),
              const Text(
                'Verification Process',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Successful',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * .01),
              const Text('Your account has been successfully',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  )),
              const Text('verified.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  )),
              SizedBox(height: MediaQuery.sizeOf(context).height * .05),
              DefaultButton(
                text: 'Continue',
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Screens.entryScreen,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
