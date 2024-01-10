// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_config_db_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppConfigDBEntityCollection on Isar {
  IsarCollection<AppConfigDBEntity> get appConfigDBEntitys => this.collection();
}

const AppConfigDBEntitySchema = CollectionSchema(
  name: r'AppConfigDBEntity',
  id: 1059429538497849251,
  properties: {
    r'countryCode': PropertySchema(
      id: 0,
      name: r'countryCode',
      type: IsarType.string,
    ),
    r'isDarkTheme': PropertySchema(
      id: 1,
      name: r'isDarkTheme',
      type: IsarType.bool,
    ),
    r'isFirstLaunch': PropertySchema(
      id: 2,
      name: r'isFirstLaunch',
      type: IsarType.bool,
    ),
    r'languageCode': PropertySchema(
      id: 3,
      name: r'languageCode',
      type: IsarType.string,
    )
  },
  estimateSize: _appConfigDBEntityEstimateSize,
  serialize: _appConfigDBEntitySerialize,
  deserialize: _appConfigDBEntityDeserialize,
  deserializeProp: _appConfigDBEntityDeserializeProp,
  idName: r'localeId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _appConfigDBEntityGetId,
  getLinks: _appConfigDBEntityGetLinks,
  attach: _appConfigDBEntityAttach,
  version: '3.1.0+1',
);

int _appConfigDBEntityEstimateSize(
  AppConfigDBEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.countryCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.languageCode.length * 3;
  return bytesCount;
}

void _appConfigDBEntitySerialize(
  AppConfigDBEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.countryCode);
  writer.writeBool(offsets[1], object.isDarkTheme);
  writer.writeBool(offsets[2], object.isFirstLaunch);
  writer.writeString(offsets[3], object.languageCode);
}

AppConfigDBEntity _appConfigDBEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppConfigDBEntity(
    reader.readString(offsets[3]),
    reader.readStringOrNull(offsets[0]),
    reader.readBool(offsets[2]),
    reader.readBool(offsets[1]),
  );
  return object;
}

P _appConfigDBEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _appConfigDBEntityGetId(AppConfigDBEntity object) {
  return object.localeId;
}

List<IsarLinkBase<dynamic>> _appConfigDBEntityGetLinks(
    AppConfigDBEntity object) {
  return [];
}

void _appConfigDBEntityAttach(
    IsarCollection<dynamic> col, Id id, AppConfigDBEntity object) {}

extension AppConfigDBEntityQueryWhereSort
    on QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QWhere> {
  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterWhere>
      anyLocaleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppConfigDBEntityQueryWhere
    on QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QWhereClause> {
  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterWhereClause>
      localeIdEqualTo(Id localeId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: localeId,
        upper: localeId,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterWhereClause>
      localeIdNotEqualTo(Id localeId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: localeId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: localeId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: localeId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: localeId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterWhereClause>
      localeIdGreaterThan(Id localeId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: localeId, includeLower: include),
      );
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterWhereClause>
      localeIdLessThan(Id localeId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: localeId, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterWhereClause>
      localeIdBetween(
    Id lowerLocaleId,
    Id upperLocaleId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerLocaleId,
        includeLower: includeLower,
        upper: upperLocaleId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppConfigDBEntityQueryFilter
    on QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QFilterCondition> {
  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      countryCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'countryCode',
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      countryCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'countryCode',
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      countryCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countryCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      countryCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'countryCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      countryCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'countryCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      countryCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'countryCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      countryCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'countryCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      countryCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'countryCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      countryCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'countryCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      countryCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'countryCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      countryCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countryCode',
        value: '',
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      countryCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'countryCode',
        value: '',
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      isDarkThemeEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDarkTheme',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      isFirstLaunchEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isFirstLaunch',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      languageCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      languageCodeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      languageCodeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      languageCodeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'languageCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      languageCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      languageCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      languageCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'languageCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      languageCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'languageCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      languageCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'languageCode',
        value: '',
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      languageCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'languageCode',
        value: '',
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      localeIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localeId',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      localeIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'localeId',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      localeIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'localeId',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterFilterCondition>
      localeIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'localeId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppConfigDBEntityQueryObject
    on QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QFilterCondition> {}

extension AppConfigDBEntityQueryLinks
    on QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QFilterCondition> {}

extension AppConfigDBEntityQuerySortBy
    on QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QSortBy> {
  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterSortBy>
      sortByCountryCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryCode', Sort.asc);
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterSortBy>
      sortByCountryCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryCode', Sort.desc);
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterSortBy>
      sortByIsDarkTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDarkTheme', Sort.asc);
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterSortBy>
      sortByIsDarkThemeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDarkTheme', Sort.desc);
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterSortBy>
      sortByIsFirstLaunch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFirstLaunch', Sort.asc);
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterSortBy>
      sortByIsFirstLaunchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFirstLaunch', Sort.desc);
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterSortBy>
      sortByLanguageCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languageCode', Sort.asc);
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterSortBy>
      sortByLanguageCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languageCode', Sort.desc);
    });
  }
}

extension AppConfigDBEntityQuerySortThenBy
    on QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QSortThenBy> {
  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterSortBy>
      thenByCountryCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryCode', Sort.asc);
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterSortBy>
      thenByCountryCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryCode', Sort.desc);
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterSortBy>
      thenByIsDarkTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDarkTheme', Sort.asc);
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterSortBy>
      thenByIsDarkThemeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDarkTheme', Sort.desc);
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterSortBy>
      thenByIsFirstLaunch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFirstLaunch', Sort.asc);
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterSortBy>
      thenByIsFirstLaunchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFirstLaunch', Sort.desc);
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterSortBy>
      thenByLanguageCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languageCode', Sort.asc);
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterSortBy>
      thenByLanguageCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languageCode', Sort.desc);
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterSortBy>
      thenByLocaleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localeId', Sort.asc);
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QAfterSortBy>
      thenByLocaleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localeId', Sort.desc);
    });
  }
}

extension AppConfigDBEntityQueryWhereDistinct
    on QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QDistinct> {
  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QDistinct>
      distinctByCountryCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'countryCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QDistinct>
      distinctByIsDarkTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDarkTheme');
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QDistinct>
      distinctByIsFirstLaunch() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isFirstLaunch');
    });
  }

  QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QDistinct>
      distinctByLanguageCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'languageCode', caseSensitive: caseSensitive);
    });
  }
}

extension AppConfigDBEntityQueryProperty
    on QueryBuilder<AppConfigDBEntity, AppConfigDBEntity, QQueryProperty> {
  QueryBuilder<AppConfigDBEntity, int, QQueryOperations> localeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'localeId');
    });
  }

  QueryBuilder<AppConfigDBEntity, String?, QQueryOperations>
      countryCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'countryCode');
    });
  }

  QueryBuilder<AppConfigDBEntity, bool, QQueryOperations>
      isDarkThemeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDarkTheme');
    });
  }

  QueryBuilder<AppConfigDBEntity, bool, QQueryOperations>
      isFirstLaunchProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isFirstLaunch');
    });
  }

  QueryBuilder<AppConfigDBEntity, String, QQueryOperations>
      languageCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'languageCode');
    });
  }
}
