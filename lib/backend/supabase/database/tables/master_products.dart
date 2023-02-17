import '../database.dart';

class MasterProductsTable extends SupabaseTable<MasterProductsRow> {
  @override
  String get tableName => 'MasterProducts';

  @override
  MasterProductsRow createRow(Map<String, dynamic> data) =>
      MasterProductsRow(data);
}

class MasterProductsRow extends SupabaseDataRow {
  MasterProductsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MasterProductsTable();

  String? get titleListGridItemLinkHref =>
      getField<String>('title-list-grid__item--link href');
  set titleListGridItemLinkHref(String? value) =>
      setField<String>('title-list-grid__item--link href', value);

  String? get pictureCompImgSrc => getField<String>('picture-comp__img src');
  set pictureCompImgSrc(String? value) =>
      setField<String>('picture-comp__img src', value);

  String? get titlePosterBadge => getField<String>('title-poster__badge');
  set titlePosterBadge(String? value) =>
      setField<String>('title-poster__badge', value);
}
