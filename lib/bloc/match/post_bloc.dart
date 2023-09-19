import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:core';

import 'package:virunga/bloc/bloc_event.dart';
import 'package:virunga/bloc/block_state.dart';
import 'package:virunga/screen/model/matchJouer.dart';
import 'package:virunga/screen/model/post.dart';

class MatchBloc extends Bloc<BlocEvent, BlocState> {
  MatchBloc() : super(BlocStateUninitialized()) {
    on<BlocEventFetch>(_onBlocEventFetch);
    on<BlocEventUnPlayedMatchFetch>(_onBlocEventUnPlayedFetch);
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
      final data = await Supabase.instance.client
          .from('Match')
          .select()
          .filter('isPlayed', 'eq', true);
      debugPrint(data.toString());
      if (data == null) {
        emit(BlocStateError(error: null));
      } else {
        List list = data.map((json) => MatchJouer.fromJson(json)).toList();
        debugPrint(list.toString());
        emit(BlocStateLoaded(data: list));
      }
    } catch (e) {
      print("Error fetching all ====> ${e.toString()}");
      emit(BlocStateError(error: e));
    }
  }

  void _onBlocEventUnPlayedFetch(event, emit) async {
    emit(BlocStateLoading());
    try {
      // final data = await fetchAllArticles(search: event.search);
      final data = await Supabase.instance.client
          .from('Match')
          .select()
          .filter('isPlayed', 'eq', false);
      debugPrint(data.toString());
      if (data == null) {
        emit(BlocStateError(error: null));
      } else {
        List list = data.map((json) => MatchJouer.fromJson(json)).toList();
        debugPrint(list.toString());
        emit(BlocStateLoaded(data: list));
      }
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
