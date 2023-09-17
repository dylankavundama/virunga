import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:core';

import 'package:virunga/bloc/bloc_event.dart';
import 'package:virunga/bloc/block_state.dart';

class PostBloc extends Bloc<BlocEvent, BlocState> {
  PostBloc() : super(BlocStateUninitialized()) {
    on<BlocEventFetch>(_onBlocEventFetch);
    // on<BlocEventArticleLotFetch>(_onBlocEventFetchLot);
    // on<BlocEventFilterFetch>(_onBlocEventFilterFetch);
    // on<BlocEventTotalFetch>(_onBlocEventTotalFetch);
    // on<BlocEventSameCategoryFetch>(_onBlocEventSameCategoryFetch);
  }
  // final ApiProvider _apiProvider = ApiProvider();

  void _onBlocEventFetch(event, emit) async {
    emit(BlocStateLoading());
    try {
      // final data = await fetchAllArticles(search: event.search);
      // final data = await _apiProvider.fetcMedicaments(
      //     search: event.search,
      //     struct: StaticsData.structureConnected!.structure!.id.toString());
      // if (data == null) {
      //   emit(BlocStateError(error: null));
      // } else {
      //   final list = data.data.map((json) => Article.fromJson(json)).toList();
      // emit(BlocStateLoaded(data: list));
      // }
    } catch (e) {
      print("Error fetching all ====> ${e.toString()}");
      emit(BlocStateError(error: e));
    }
  }

  // void _onBlocEventFetchLot(event, emit) async {
  //   emit(BlocStateLoading());
  //   try {
  //     final data = await _apiProvider.fetchLotArticle(
  //         article: event.article,
  //         struct: StaticsData.structureConnected!.structure!.id.toString());
  //     if (data == null) {
  //       emit(BlocStateError(error: null));
  //     } else {
  //       final list =
  //           data.data.map((json) => DetailArticle.fromJson(json)).toList();
  //       emit(BlocStateLoaded(data: list));
  //     }
  //   } catch (e) {
  //     print("Error fetching all ====> ${e.toString()}");
  //     emit(BlocStateError(error: e));
  //   }
  // }
}