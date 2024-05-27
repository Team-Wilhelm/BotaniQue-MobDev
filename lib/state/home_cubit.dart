import 'package:botanique/models/models/plant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<List<GetCriticalPlantDto>> {
  HomeCubit() : super([]);

  void setCriticalPlants(List<GetCriticalPlantDto> plants) {
    emit(plants);
  }
}
