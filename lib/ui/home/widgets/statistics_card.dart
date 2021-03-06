import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ow_api_app/bloc/home/home_bloc.dart';
import 'package:ow_api_app/ui/home/widgets/private_profile_widget.dart';
import 'package:ow_api_app/ui/home/widgets/profile_most_played_hero_widget.dart';
import 'package:ow_api_app/ui/home/widgets/profile_role_statistics_widget.dart';
import 'package:ow_api_app/ui/home/widgets/rank_rating_widget.dart';

class StatisticsCard extends StatefulWidget {
  const StatisticsCard({Key key}) : super(key: key);

  @override
  _StatisticsCardState createState() => _StatisticsCardState();
}

class _StatisticsCardState extends State<StatisticsCard> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
            if (state is ProfileLoadedState) {
              return Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: state.profileStats.private
                    ? PrivateProfileWidget()
                    : Column(
                        children: [
                          RankRatingWidget(),
                          Divider(height: 1, thickness: 1),
                          RoleStatisticsWidget(),
                          Divider(height: 1, thickness: 1),
                          MostPlayedHeroes(),
                        ],
                      ),
              );
            } else {
              return Container();
            }
          })),
    );
  }
}
