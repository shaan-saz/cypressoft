// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetPhotoCollection on Isar {
  IsarCollection<Photo> get photos => getCollection();
}

const PhotoSchema = CollectionSchema(
  name: 'Photo',
  schema:
      '{"name":"Photo","idName":"id","properties":[{"name":"albumId","type":"Long"},{"name":"thumbnailUrl","type":"String"},{"name":"title","type":"String"},{"name":"url","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'albumId': 0, 'thumbnailUrl': 1, 'title': 2, 'url': 3},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _photoGetId,
  setId: _photoSetId,
  getLinks: _photoGetLinks,
  attachLinks: _photoAttachLinks,
  serializeNative: _photoSerializeNative,
  deserializeNative: _photoDeserializeNative,
  deserializePropNative: _photoDeserializePropNative,
  serializeWeb: _photoSerializeWeb,
  deserializeWeb: _photoDeserializeWeb,
  deserializePropWeb: _photoDeserializePropWeb,
  version: 3,
);

int? _photoGetId(Photo object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _photoSetId(Photo object, int id) {
  object.id = id;
}

List<IsarLinkBase> _photoGetLinks(Photo object) {
  return [];
}

void _photoSerializeNative(
    IsarCollection<Photo> collection,
    IsarRawObject rawObj,
    Photo object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.albumId;
  final _albumId = value0;
  final value1 = object.thumbnailUrl;
  final _thumbnailUrl = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_thumbnailUrl.length) as int;
  final value2 = object.title;
  final _title = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_title.length) as int;
  final value3 = object.url;
  final _url = IsarBinaryWriter.utf8Encoder.convert(value3);
  dynamicSize += (_url.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeLong(offsets[0], _albumId);
  writer.writeBytes(offsets[1], _thumbnailUrl);
  writer.writeBytes(offsets[2], _title);
  writer.writeBytes(offsets[3], _url);
}

Photo _photoDeserializeNative(IsarCollection<Photo> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Photo(
    albumId: reader.readLong(offsets[0]),
    id: id,
    thumbnailUrl: reader.readString(offsets[1]),
    title: reader.readString(offsets[2]),
    url: reader.readString(offsets[3]),
  );
  return object;
}

P _photoDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _photoSerializeWeb(IsarCollection<Photo> collection, Photo object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'albumId', object.albumId);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'thumbnailUrl', object.thumbnailUrl);
  IsarNative.jsObjectSet(jsObj, 'title', object.title);
  IsarNative.jsObjectSet(jsObj, 'url', object.url);
  return jsObj;
}

Photo _photoDeserializeWeb(IsarCollection<Photo> collection, dynamic jsObj) {
  final object = Photo(
    albumId:
        IsarNative.jsObjectGet(jsObj, 'albumId') ?? double.negativeInfinity,
    id: IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity,
    thumbnailUrl: IsarNative.jsObjectGet(jsObj, 'thumbnailUrl') ?? '',
    title: IsarNative.jsObjectGet(jsObj, 'title') ?? '',
    url: IsarNative.jsObjectGet(jsObj, 'url') ?? '',
  );
  return object;
}

P _photoDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'albumId':
      return (IsarNative.jsObjectGet(jsObj, 'albumId') ??
          double.negativeInfinity) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'thumbnailUrl':
      return (IsarNative.jsObjectGet(jsObj, 'thumbnailUrl') ?? '') as P;
    case 'title':
      return (IsarNative.jsObjectGet(jsObj, 'title') ?? '') as P;
    case 'url':
      return (IsarNative.jsObjectGet(jsObj, 'url') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _photoAttachLinks(IsarCollection col, int id, Photo object) {}

extension PhotoQueryWhereSort on QueryBuilder<Photo, Photo, QWhere> {
  QueryBuilder<Photo, Photo, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension PhotoQueryWhere on QueryBuilder<Photo, Photo, QWhereClause> {
  QueryBuilder<Photo, Photo, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Photo, Photo, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Photo, Photo, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Photo, Photo, QAfterWhereClause> idBetween(
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

extension PhotoQueryFilter on QueryBuilder<Photo, Photo, QFilterCondition> {
  QueryBuilder<Photo, Photo, QAfterFilterCondition> albumIdEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'albumId',
      value: value,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> albumIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'albumId',
      value: value,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> albumIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'albumId',
      value: value,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> albumIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'albumId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Photo, Photo, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Photo, Photo, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Photo, Photo, QAfterFilterCondition> thumbnailUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'thumbnailUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> thumbnailUrlGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'thumbnailUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> thumbnailUrlLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'thumbnailUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> thumbnailUrlBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'thumbnailUrl',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> thumbnailUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'thumbnailUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> thumbnailUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'thumbnailUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> thumbnailUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'thumbnailUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> thumbnailUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'thumbnailUrl',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> titleEqualTo(
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

  QueryBuilder<Photo, Photo, QAfterFilterCondition> titleGreaterThan(
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

  QueryBuilder<Photo, Photo, QAfterFilterCondition> titleLessThan(
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

  QueryBuilder<Photo, Photo, QAfterFilterCondition> titleBetween(
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

  QueryBuilder<Photo, Photo, QAfterFilterCondition> titleStartsWith(
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

  QueryBuilder<Photo, Photo, QAfterFilterCondition> titleEndsWith(
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

  QueryBuilder<Photo, Photo, QAfterFilterCondition> titleContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> titleMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'title',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> urlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> urlGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> urlLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> urlBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'url',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> urlContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Photo, Photo, QAfterFilterCondition> urlMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'url',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension PhotoQueryLinks on QueryBuilder<Photo, Photo, QFilterCondition> {}

extension PhotoQueryWhereSortBy on QueryBuilder<Photo, Photo, QSortBy> {
  QueryBuilder<Photo, Photo, QAfterSortBy> sortByAlbumId() {
    return addSortByInternal('albumId', Sort.asc);
  }

  QueryBuilder<Photo, Photo, QAfterSortBy> sortByAlbumIdDesc() {
    return addSortByInternal('albumId', Sort.desc);
  }

  QueryBuilder<Photo, Photo, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Photo, Photo, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Photo, Photo, QAfterSortBy> sortByThumbnailUrl() {
    return addSortByInternal('thumbnailUrl', Sort.asc);
  }

  QueryBuilder<Photo, Photo, QAfterSortBy> sortByThumbnailUrlDesc() {
    return addSortByInternal('thumbnailUrl', Sort.desc);
  }

  QueryBuilder<Photo, Photo, QAfterSortBy> sortByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<Photo, Photo, QAfterSortBy> sortByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }

  QueryBuilder<Photo, Photo, QAfterSortBy> sortByUrl() {
    return addSortByInternal('url', Sort.asc);
  }

  QueryBuilder<Photo, Photo, QAfterSortBy> sortByUrlDesc() {
    return addSortByInternal('url', Sort.desc);
  }
}

extension PhotoQueryWhereSortThenBy on QueryBuilder<Photo, Photo, QSortThenBy> {
  QueryBuilder<Photo, Photo, QAfterSortBy> thenByAlbumId() {
    return addSortByInternal('albumId', Sort.asc);
  }

  QueryBuilder<Photo, Photo, QAfterSortBy> thenByAlbumIdDesc() {
    return addSortByInternal('albumId', Sort.desc);
  }

  QueryBuilder<Photo, Photo, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Photo, Photo, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Photo, Photo, QAfterSortBy> thenByThumbnailUrl() {
    return addSortByInternal('thumbnailUrl', Sort.asc);
  }

  QueryBuilder<Photo, Photo, QAfterSortBy> thenByThumbnailUrlDesc() {
    return addSortByInternal('thumbnailUrl', Sort.desc);
  }

  QueryBuilder<Photo, Photo, QAfterSortBy> thenByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<Photo, Photo, QAfterSortBy> thenByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }

  QueryBuilder<Photo, Photo, QAfterSortBy> thenByUrl() {
    return addSortByInternal('url', Sort.asc);
  }

  QueryBuilder<Photo, Photo, QAfterSortBy> thenByUrlDesc() {
    return addSortByInternal('url', Sort.desc);
  }
}

extension PhotoQueryWhereDistinct on QueryBuilder<Photo, Photo, QDistinct> {
  QueryBuilder<Photo, Photo, QDistinct> distinctByAlbumId() {
    return addDistinctByInternal('albumId');
  }

  QueryBuilder<Photo, Photo, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Photo, Photo, QDistinct> distinctByThumbnailUrl(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('thumbnailUrl', caseSensitive: caseSensitive);
  }

  QueryBuilder<Photo, Photo, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('title', caseSensitive: caseSensitive);
  }

  QueryBuilder<Photo, Photo, QDistinct> distinctByUrl(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('url', caseSensitive: caseSensitive);
  }
}

extension PhotoQueryProperty on QueryBuilder<Photo, Photo, QQueryProperty> {
  QueryBuilder<Photo, int, QQueryOperations> albumIdProperty() {
    return addPropertyNameInternal('albumId');
  }

  QueryBuilder<Photo, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Photo, String, QQueryOperations> thumbnailUrlProperty() {
    return addPropertyNameInternal('thumbnailUrl');
  }

  QueryBuilder<Photo, String, QQueryOperations> titleProperty() {
    return addPropertyNameInternal('title');
  }

  QueryBuilder<Photo, String, QQueryOperations> urlProperty() {
    return addPropertyNameInternal('url');
  }
}
