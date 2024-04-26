import 'package:flutter_bloc/flutter_bloc.dart';

class AllPlantsCubit extends Cubit<AllPlantsState> {
  AllPlantsCubit(super.state);

  void selectCategory(String category) {
    emit(
      state.copyWith(selectedCategory: category),
    );
  }
}

class AllPlantsState {
  final String selectedCategory;

  const AllPlantsState({
    required this.selectedCategory,
  });

  static AllPlantsState initial() =>
      const AllPlantsState(selectedCategory: "All Plants");

  AllPlantsState copyWith({
    String? selectedCategory,
  }) {
    return AllPlantsState(
      selectedCategory: selectedCategory ?? this.selectedCategory,
    );
  }
}
