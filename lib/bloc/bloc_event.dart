abstract class BlocEvent {}

class BlocEventSummaryAllFetch extends BlocEvent {
  final String? data;
  BlocEventSummaryAllFetch({this.data});
  @override
  String toString() => 'BlocEventSummaryAllFetch';
}

class BlocEventPerteFetch extends BlocEvent {
  @override
  String toString() => 'BlocEventPerteFetch';
}

class BlocEventFetch extends BlocEvent {
  final String? data;
  final String? dateDebut;
  final String? dateFin;
  final String? search;
  final int? limit;
  BlocEventFetch(
      {this.data, this.dateDebut, this.dateFin, this.search, this.limit});
  @override
  String toString() => 'BlocEventFetch';
}

class BlocEventUnPlayedMatchFetch extends BlocEvent {
  BlocEventUnPlayedMatchFetch();
  @override
  String toString() => 'BlocEventUnPlayedMatchFetch';
}

class BlocEventLastSalesFetch extends BlocEvent {
  final int? limit;
  BlocEventLastSalesFetch({this.limit});
  @override
  String toString() => 'BlocEventLastSalesFetch';
}

class BlocEventSalesSearch extends BlocEvent {
  final String? item;
  final String? dateDebut;
  final String? dateFin;
  final bool? isRange;
  BlocEventSalesSearch({this.item, this.dateDebut, this.dateFin, this.isRange});
  @override
  String toString() => 'BlocEventSalesSearch';
}

class BlocEventFilterFetch extends BlocEvent {
  final String devise;
  final String? numero;
  final String? nom;
  final String? dateDebut;
  final String? dateFin;
  final List reseau;
  final String typeTransact;
  BlocEventFilterFetch(
      {required this.devise,
      required this.reseau,
      this.numero,
      this.nom,
      this.dateDebut,
      this.dateFin,
      required this.typeTransact});
  @override
  String toString() => 'BlocEventFilterFetch';
}

class BlocEventTotalFetch extends BlocEvent {
  final String? date;
  BlocEventTotalFetch({this.date});
  @override
  String toString() => 'BlocEventTotalFetch';
}

class BlocEventCategoryFetch extends BlocEvent {
  @override
  String toString() => 'BlocEventCategoryFetch';
}

class BlocEventRecentFetch extends BlocEvent {
  @override
  String toString() => 'BlocEventRecentFetch';
}

class BlocEventSameCategoryFetch extends BlocEvent {
  final String category;
  BlocEventSameCategoryFetch({required this.category});
  @override
  String toString() => 'BlocEventSameCategoryFetch';
}

class BlocEventArticleLotFetch extends BlocEvent {
  final String article;
  BlocEventArticleLotFetch({required this.article});
  @override
  String toString() => 'BlocEventArticleLotFetch';
}
