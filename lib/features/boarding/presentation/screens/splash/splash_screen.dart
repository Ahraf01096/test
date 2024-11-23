import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/core/services/services_locator.dart';
import 'package:task1/core/styles/colors.dart';
import 'package:task1/core/utils/enums.dart';
import 'package:task1/core/utils/screens.dart';
import 'package:task1/generated/assets.dart';
import 'package:task1/main.dart';

import '../../controller/base_bloc/base_bloc.dart';
import '../../controller/base_bloc/base_event.dart';
import '../../controller/base_bloc/base_state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<BaseBloc>()
        ..add(GetUserDataEvent())
        ..add(GetIsLoggedEvent()),
      child: BlocConsumer<BaseBloc, BaseState>(listener: (context, state) {
        BaseBloc baseBloc = context.read<BaseBloc>();
        if ((baseBloc.state.sharedPrefsState == SharedPrefsState.loaded) &&
            baseBloc.state.isLogged == true) {
          log(baseBloc.state.boardingUserData.toString());
          Future.delayed(const Duration(seconds: 1), () {
            Navigator.pushNamedAndRemoveUntil(
                context, Screens.homeLayout, (route) => false);
          });
        } else if ((baseBloc.state.sharedPrefsState ==
                SharedPrefsState.loaded) &&
            baseBloc.state.isLogged == false) {
          Future.delayed(const Duration(seconds: 1), () {
            Navigator.pushNamedAndRemoveUntil(
                context, Screens.entryScreen, (route) => false);
          });
        }
        if (state.getLocal) {
          if (state.currentLocal != '')
            delegate.changeLocale(Locale(state.currentLocal));
        }
      }, builder: (context, state) {
        log('STATE: $state');
        return Scaffold(
          backgroundColor: AppColor.white,
          body: Center(
            child: Image.asset(Assets.imagesLogo),
          ),
        );
      }),
    );
  }
}
