
import 'package:bloc_flutter/bloc/app_event.dart';
import 'package:bloc_flutter/bloc/app_state.dart';
import 'package:bloc_flutter/models/usermodel.dart';
import 'package:bloc_flutter/repos/repositary.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckApiBloc extends Bloc<AppEvent, Initialstate>{
    
     CheckApiBloc():super(LoadinState()){
       
       on<AppEvent>((event, emit) async{
            var resultdata = await UserRepositary().getApi();
            
          emit(LoadinState());
          emit(FailureState());
          emit(SuccessfulState(users: resultdata));
       });
     }

}