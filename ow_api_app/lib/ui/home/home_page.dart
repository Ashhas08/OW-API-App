import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/ProfileDisplayWidget.dart';
import 'package:ow_api_app/bloc/profile/profile_bloc.dart';
import 'package:ow_api_app/bloc/profile/profile_event.dart';
import 'package:ow_api_app/bloc/profile/profile_state.dart';
import 'package:ow_api_app/data/util/ApiExceptionMapper.dart';
import 'package:ow_api_app/ui/home/widget/ErrorUiWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ProfileBloc profileBloc;

  @override
  void initState() {
    super.initState();
    profileBloc = BlocProvider.of<ProfileBloc>(context);
    profileBloc.add(FetchProfileEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1.0),
      body: Container(
        child: BlocListener<ProfileBloc, ProfileState>(
          listener: (context, state) {
            if (state is ProfileErrorState) {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content:
                      Text(ApiExceptionMapper.toErrorMessage(state.exception)),
                ),
              );
            }
          },
          child: BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              if (state is ProfileInitialState) {
                return buildLoading();
              } else if (state is ProfileLoadingState) {
                return buildLoading();
              } else if (state is ProfileLoadedState) {
                return ProfileDisplayWidget(
                  currentProfile: state.profileStats,
                  profileBloc: profileBloc,
                );
              } else if (state is ProfileErrorState) {
                return ErrorUiWidget(state.exception);
              } else
                return Container();
            },
          ),
        ),
      ),
    );
  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
