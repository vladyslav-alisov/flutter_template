// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_info_db_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppInfoDBEntityCollection on Isar {
  IsarCollection<AppInfoDBEntity> get appInfoDBEntitys => this.collection();
}

const AppInfoDBEntitySchema = CollectionSchema(
  name: r'AppInfoDBEntity',
  id: 5565835155413442332,
  properties: {
    r'appName': PropertySchema(
      id: 0,
      name: r'appName',
      type: IsarType.string,
    ),
    r'buildNumber': PropertySchema(
      id: 1,
      name: r'buildNumber',
      type: IsarType.string,
    ),
    r'buildSignature': PropertySchema(
      id: 2,
      name: r'buildSignature',
      type: IsarType.string,
    ),
    r'lastUpdated': PropertySchema(
      id: 3,
      name: r'lastUpdated',
      type: IsarType.dateTime,
    ),
    r'packageName': PropertySchema(
      id: 4,
      name: r'packageName',
      type: IsarType.string,
    ),
    r'version': PropertySchema(
      id: 5,
      name: r'version',
      type: IsarType.string,
    )
  },
  estimateSize: _appInfoDBEntityEstimateSize,
  serialize: _appInfoDBEntitySerialize,
  deserialize: _appInfoDBEntityDeserialize,
  deserializeProp: _appInfoDBEntityDeserializeProp,
  idName: r'localeId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _appInfoDBEntityGetId,
  getLinks: _appInfoDBEntityGetLinks,
  attach: _appInfoDBEntityAttach,
  version: '3.1.0+1',
);

int _appInfoDBEntityEstimateSize(
  AppInfoDBEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.appName.length * 3;
  bytesCount += 3 + object.buildNumber.length * 3;
  bytesCount += 3 + object.buildSignature.length * 3;
  bytesCount += 3 + object.packageName.length * 3;
  bytesCount += 3 + object.version.length * 3;
  return bytesCount;
}

void _appInfoDBEntitySerialize(
  AppInfoDBEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.appName);
  writer.writeString(offsets[1], object.buildNumber);
  writer.writeString(offsets[2], object.buildSignature);
  writer.writeDateTime(offsets[3], object.lastUpdated);
  writer.writeString(offsets[4], object.packageName);
  writer.writeString(offsets[5], object.version);
}

AppInfoDBEntity _appInfoDBEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppInfoDBEntity(
    reader.readString(offsets[0]),
    reader.readString(offsets[4]),
    reader.readString(offsets[5]),
    reader.readString(offsets[1]),
    reader.readString(offsets[2]),
    reader.readDateTime(offsets[3]),
  );
  return object;
}

P _appInfoDBEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _appInfoDBEntityGetId(AppInfoDBEntity object) {
  return object.localeId;
}

List<IsarLinkBase<dynamic>> _appInfoDBEntityGetLinks(AppInfoDBEntity object) {
  return [];
}

void _appInfoDBEntityAttach(
    IsarCollection<dynamic> col, Id id, AppInfoDBEntity object) {}

extension AppInfoDBEntityQueryWhereSort
    on QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QWhere> {
  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterWhere> anyLocaleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppInfoDBEntityQueryWhere
    on QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QWhereClause> {
  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterWhereClause>
      localeIdEqualTo(Id localeId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: localeId,
        upper: localeId,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterWhereClause>
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

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterWhereClause>
      localeIdGreaterThan(Id localeId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: localeId, includeLower: include),
      );
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterWhereClause>
      localeIdLessThan(Id localeId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: localeId, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterWhereClause>
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

extension AppInfoDBEntityQueryFilter
    on QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QFilterCondition> {
  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      appNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'appName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      appNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'appName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      appNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'appName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      appNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'appName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      appNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'appName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      appNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'appName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      appNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'appName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      appNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'appName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      appNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'appName',
        value: '',
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      appNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'appName',
        value: '',
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      buildNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'buildNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      buildNumberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'buildNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      buildNumberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'buildNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      buildNumberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'buildNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      buildNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'buildNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      buildNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'buildNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      buildNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'buildNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      buildNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'buildNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      buildNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'buildNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      buildNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'buildNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      buildSignatureEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'buildSignature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      buildSignatureGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'buildSignature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      buildSignatureLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'buildSignature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      buildSignatureBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'buildSignature',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      buildSignatureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'buildSignature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      buildSignatureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'buildSignature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      buildSignatureContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'buildSignature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      buildSignatureMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'buildSignature',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      buildSignatureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'buildSignature',
        value: '',
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      buildSignatureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'buildSignature',
        value: '',
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      lastUpdatedEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastUpdated',
        value: value,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      lastUpdatedGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastUpdated',
        value: value,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      lastUpdatedLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastUpdated',
        value: value,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      lastUpdatedBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastUpdated',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      localeIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localeId',
        value: value,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
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

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
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

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
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

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      packageNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'packageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      packageNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'packageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      packageNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'packageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      packageNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'packageName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      packageNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'packageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      packageNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'packageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      packageNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'packageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      packageNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'packageName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      packageNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'packageName',
        value: '',
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      packageNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'packageName',
        value: '',
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      versionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      versionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      versionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      versionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'version',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      versionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      versionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      versionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      versionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'version',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      versionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: '',
      ));
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterFilterCondition>
      versionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'version',
        value: '',
      ));
    });
  }
}

extension AppInfoDBEntityQueryObject
    on QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QFilterCondition> {}

extension AppInfoDBEntityQueryLinks
    on QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QFilterCondition> {}

extension AppInfoDBEntityQuerySortBy
    on QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QSortBy> {
  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy> sortByAppName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appName', Sort.asc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      sortByAppNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appName', Sort.desc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      sortByBuildNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'buildNumber', Sort.asc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      sortByBuildNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'buildNumber', Sort.desc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      sortByBuildSignature() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'buildSignature', Sort.asc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      sortByBuildSignatureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'buildSignature', Sort.desc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      sortByLastUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.asc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      sortByLastUpdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.desc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      sortByPackageName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageName', Sort.asc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      sortByPackageNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageName', Sort.desc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy> sortByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      sortByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension AppInfoDBEntityQuerySortThenBy
    on QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QSortThenBy> {
  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy> thenByAppName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appName', Sort.asc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      thenByAppNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appName', Sort.desc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      thenByBuildNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'buildNumber', Sort.asc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      thenByBuildNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'buildNumber', Sort.desc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      thenByBuildSignature() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'buildSignature', Sort.asc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      thenByBuildSignatureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'buildSignature', Sort.desc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      thenByLastUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.asc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      thenByLastUpdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.desc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      thenByLocaleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localeId', Sort.asc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      thenByLocaleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localeId', Sort.desc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      thenByPackageName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageName', Sort.asc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      thenByPackageNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageName', Sort.desc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy> thenByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QAfterSortBy>
      thenByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension AppInfoDBEntityQueryWhereDistinct
    on QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QDistinct> {
  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QDistinct> distinctByAppName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'appName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QDistinct>
      distinctByBuildNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'buildNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QDistinct>
      distinctByBuildSignature({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'buildSignature',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QDistinct>
      distinctByLastUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastUpdated');
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QDistinct>
      distinctByPackageName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'packageName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QDistinct> distinctByVersion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'version', caseSensitive: caseSensitive);
    });
  }
}

extension AppInfoDBEntityQueryProperty
    on QueryBuilder<AppInfoDBEntity, AppInfoDBEntity, QQueryProperty> {
  QueryBuilder<AppInfoDBEntity, int, QQueryOperations> localeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'localeId');
    });
  }

  QueryBuilder<AppInfoDBEntity, String, QQueryOperations> appNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'appName');
    });
  }

  QueryBuilder<AppInfoDBEntity, String, QQueryOperations>
      buildNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'buildNumber');
    });
  }

  QueryBuilder<AppInfoDBEntity, String, QQueryOperations>
      buildSignatureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'buildSignature');
    });
  }

  QueryBuilder<AppInfoDBEntity, DateTime, QQueryOperations>
      lastUpdatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastUpdated');
    });
  }

  QueryBuilder<AppInfoDBEntity, String, QQueryOperations>
      packageNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'packageName');
    });
  }

  QueryBuilder<AppInfoDBEntity, String, QQueryOperations> versionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'version');
    });
  }
}
