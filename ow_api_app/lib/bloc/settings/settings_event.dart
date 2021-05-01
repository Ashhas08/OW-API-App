part of 'package:ow_api_app/bloc/settings/settings_bloc.dart';

abstract class SettingsEvent extends Equatable {
  const SettingsEvent();
}

class SettingsOpenedEvent extends SettingsEvent {
  @override
  List<Object> get props => [];
}

class ChangeProfileEvent extends SettingsEvent {
  final String profileId;
  final String platformId;

  ChangeProfileEvent({@required this.profileId, @required this.platformId});

  @override
  List<Object> get props => null;
}

class AddProfileEvent extends SettingsEvent {
  final String profileId;
  final String platformId;
  final Box accountBox;

  AddProfileEvent(
      {@required this.profileId,
      @required this.platformId,
      @required this.accountBox});

  @override
  List<Object> get props => [profileId, platformId];
}