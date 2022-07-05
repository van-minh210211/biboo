part of 'music_cubit.dart';

abstract class MusicState{
  const MusicState();

  @override
  List<Object> get props => [];
}

class MusicInitial extends MusicState {
  const MusicInitial();
}
class MusicLoading extends MusicState {}
class MusicPlayer extends MusicState{
  final Duration totalSecond , second;
  const MusicPlayer ( this.totalSecond,this.second);
}
class MusicPause extends MusicState {
  final Duration totalSecond , second;
  const MusicPause ( this.totalSecond,this.second);
}
class MusicStop extends MusicState {}
class MusicErorr extends MusicState{}
