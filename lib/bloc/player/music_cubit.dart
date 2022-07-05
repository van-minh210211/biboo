
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';


part 'music_state.dart';

class MusicCubit extends Cubit<MusicState> {


  Duration _duration = new Duration();
  Duration _position = new Duration();
  
  
  MusicCubit() : super(MusicInitial()){
   
  }
  

}
