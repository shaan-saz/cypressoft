// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetAlbumCollection on Isar {
  IsarCollection<Album> get albums => getCollection();
}

const AlbumSchema = CollectionSchema(
  name: 'Album',
  schema:
      '{"name":"Album","idName":"id","properties":[{"name":"title","type":"String"},{"name":"userId","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'title': 0, 'userId': 1},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _albumGetId,
  setId: _albumSetId,
  getLinks: _albumGetLinks,
  attachLinks: _albumAttachLinks,
  serializeNative: _albumSerializeNative,
  deserializeNative: _albumDeserializeNative,
  deserializePropNative: _albumDeserializePropNative,
  serializeWeb: _albumSerializeWeb,
  deserializeWeb: _albumDeserializeWeb,
  deserializePropWeb: _albumDeserializePropWeb,
  version: 3,
);

int? _albumGetId(Album object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _albumSetId(Album object, int id) {
  object.id = id;
}

List<IsarLinkBase> _albumGetLinks(Album object) {
  return [];
}

void _albumSerializeNative(
    IsarCollection<Album> collection,
    IsarRawObject rawObj,
    Album object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.title;
  final _title = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_title.length) as int;
  final value1 = object.userId;
  final _userId = value1;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _title);
  writer.writeLong(offsets[1], _userId);
}

Album _albumDeserializeNative(IsarCollection<Album> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Album(
    id: id,
    title: reader.readString(offsets[0]),
    userId: reader.readLong(offsets[1]),
  );
  return object;
}

P _albumDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _albumSerializeWeb(IsarCollection<Album> collection, Album object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'title', object.title);
  IsarNative.jsObjectSet(jsObj, 'userId', object.userId);
  return jsObj;
}

Album _albumDeserializeWeb(IsarCollection<Album> collection, dynamic jsObj) {
  final object = Album(
    id: IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity,
    title: IsarNative.jsObjectGet(jsObj, 'title') ?? '',
    userId: IsarNative.jsObjectGet(jsObj, 'userId') ?? double.negativeInfinity,
  );
  return object;
}

P _albumDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'title':
      return (IsarNative.jsObjectGet(jsObj, 'title') ?? '') as P;
    case 'userId':
      return (IsarNative.jsObjectGet(jsObj, 'userId') ??
          double.negativeInfinity) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _albumAttachLinks(IsarCollection col, int id, Album object) {}

extension AlbumQueryWhereSort on QueryBuilder<Album, Album, QWhere> {
  QueryBuilder<Album, Album, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension AlbumQueryWhere on QueryBuilder<Album, Album, QWhereClause> {
  QueryBuilder<Album, Album, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Album, Album, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<Album, Album, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Album, Album, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Album, Album, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension AlbumQueryFilter on QueryBuilder<Album, Album, QFilterCondition> {
  QueryBuilder<Album, Album, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> titleLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'title',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> titleContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> titleMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'title',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> userIdEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'userId',
      value: value,
    ));
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> userIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'userId',
      value: value,
    ));
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> userIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'userId',
      value: value,
    ));
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> userIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'userId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension AlbumQueryLinks on QueryBuilder<Album, Album, QFilterCondition> {}

extension AlbumQueryWhereSortBy on QueryBuilder<Album, Album, QSortBy> {
  QueryBuilder<Album, Album, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Album, Album, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Album, Album, QAfterSortBy> sortByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<Album, Album, QAfterSortBy> sortByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }

  QueryBuilder<Album, Album, QAfterSortBy> sortByUserId() {
    return addSortByInternal('userId', Sort.asc);
  }

  QueryBuilder<Album, Album, QAfterSortBy> sortByUserIdDesc() {
    return addSortByInternal('userId', Sort.desc);
  }
}

extension AlbumQueryWhereSortThenBy on QueryBuilder<Album, Album, QSortThenBy> {
  QueryBuilder<Album, Album, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenByUserId() {
    return addSortByInternal('userId', Sort.asc);
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenByUserIdDesc() {
    return addSortByInternal('userId', Sort.desc);
  }
}

extension AlbumQueryWhereDistinct on QueryBuilder<Album, Album, QDistinct> {
  QueryBuilder<Album, Album, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Album, Album, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('title', caseSensitive: caseSensitive);
  }

  QueryBuilder<Album, Album, QDistinct> distinctByUserId() {
    return addDistinctByInternal('userId');
  }
}

extension AlbumQueryProperty on QueryBuilder<Album, Album, QQueryProperty> {
  QueryBuilder<Album, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Album, String, QQueryOperations> titleProperty() {
    return addPropertyNameInternal('title');
  }

  QueryBuilder<Album, int, QQueryOperations> userIdProperty() {
    return addPropertyNameInternal('userId');
  }
}
