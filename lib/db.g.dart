// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Parameter extends DataClass implements Insertable<Parameter> {
  final String code;
  final int numberValue;
  final String textValue;
  final bool booleanValue;
  Parameter(
      {@required this.code,
      @required this.numberValue,
      @required this.textValue,
      @required this.booleanValue});
  factory Parameter.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    return Parameter(
      code: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}code']),
      numberValue: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}number_value']),
      textValue: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}text_value']),
      booleanValue: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}boolean_value']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || numberValue != null) {
      map['number_value'] = Variable<int>(numberValue);
    }
    if (!nullToAbsent || textValue != null) {
      map['text_value'] = Variable<String>(textValue);
    }
    if (!nullToAbsent || booleanValue != null) {
      map['boolean_value'] = Variable<bool>(booleanValue);
    }
    return map;
  }

  ParametersCompanion toCompanion(bool nullToAbsent) {
    return ParametersCompanion(
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      numberValue: numberValue == null && nullToAbsent
          ? const Value.absent()
          : Value(numberValue),
      textValue: textValue == null && nullToAbsent
          ? const Value.absent()
          : Value(textValue),
      booleanValue: booleanValue == null && nullToAbsent
          ? const Value.absent()
          : Value(booleanValue),
    );
  }

  factory Parameter.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Parameter(
      code: serializer.fromJson<String>(json['code']),
      numberValue: serializer.fromJson<int>(json['numberValue']),
      textValue: serializer.fromJson<String>(json['textValue']),
      booleanValue: serializer.fromJson<bool>(json['booleanValue']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'code': serializer.toJson<String>(code),
      'numberValue': serializer.toJson<int>(numberValue),
      'textValue': serializer.toJson<String>(textValue),
      'booleanValue': serializer.toJson<bool>(booleanValue),
    };
  }

  Parameter copyWith(
          {String code,
          int numberValue,
          String textValue,
          bool booleanValue}) =>
      Parameter(
        code: code ?? this.code,
        numberValue: numberValue ?? this.numberValue,
        textValue: textValue ?? this.textValue,
        booleanValue: booleanValue ?? this.booleanValue,
      );
  @override
  String toString() {
    return (StringBuffer('Parameter(')
          ..write('code: $code, ')
          ..write('numberValue: $numberValue, ')
          ..write('textValue: $textValue, ')
          ..write('booleanValue: $booleanValue')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      code.hashCode,
      $mrjc(numberValue.hashCode,
          $mrjc(textValue.hashCode, booleanValue.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Parameter &&
          other.code == this.code &&
          other.numberValue == this.numberValue &&
          other.textValue == this.textValue &&
          other.booleanValue == this.booleanValue);
}

class ParametersCompanion extends UpdateCompanion<Parameter> {
  final Value<String> code;
  final Value<int> numberValue;
  final Value<String> textValue;
  final Value<bool> booleanValue;
  const ParametersCompanion({
    this.code = const Value.absent(),
    this.numberValue = const Value.absent(),
    this.textValue = const Value.absent(),
    this.booleanValue = const Value.absent(),
  });
  ParametersCompanion.insert({
    @required String code,
    @required int numberValue,
    @required String textValue,
    this.booleanValue = const Value.absent(),
  })  : code = Value(code),
        numberValue = Value(numberValue),
        textValue = Value(textValue);
  static Insertable<Parameter> custom({
    Expression<String> code,
    Expression<int> numberValue,
    Expression<String> textValue,
    Expression<bool> booleanValue,
  }) {
    return RawValuesInsertable({
      if (code != null) 'code': code,
      if (numberValue != null) 'number_value': numberValue,
      if (textValue != null) 'text_value': textValue,
      if (booleanValue != null) 'boolean_value': booleanValue,
    });
  }

  ParametersCompanion copyWith(
      {Value<String> code,
      Value<int> numberValue,
      Value<String> textValue,
      Value<bool> booleanValue}) {
    return ParametersCompanion(
      code: code ?? this.code,
      numberValue: numberValue ?? this.numberValue,
      textValue: textValue ?? this.textValue,
      booleanValue: booleanValue ?? this.booleanValue,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (numberValue.present) {
      map['number_value'] = Variable<int>(numberValue.value);
    }
    if (textValue.present) {
      map['text_value'] = Variable<String>(textValue.value);
    }
    if (booleanValue.present) {
      map['boolean_value'] = Variable<bool>(booleanValue.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ParametersCompanion(')
          ..write('code: $code, ')
          ..write('numberValue: $numberValue, ')
          ..write('textValue: $textValue, ')
          ..write('booleanValue: $booleanValue')
          ..write(')'))
        .toString();
  }
}

class $ParametersTable extends Parameters
    with TableInfo<$ParametersTable, Parameter> {
  final GeneratedDatabase _db;
  final String _alias;
  $ParametersTable(this._db, [this._alias]);
  final VerificationMeta _codeMeta = const VerificationMeta('code');
  GeneratedTextColumn _code;
  @override
  GeneratedTextColumn get code => _code ??= _constructCode();
  GeneratedTextColumn _constructCode() {
    return GeneratedTextColumn(
      'code',
      $tableName,
      false,
    );
  }

  final VerificationMeta _numberValueMeta =
      const VerificationMeta('numberValue');
  GeneratedIntColumn _numberValue;
  @override
  GeneratedIntColumn get numberValue =>
      _numberValue ??= _constructNumberValue();
  GeneratedIntColumn _constructNumberValue() {
    return GeneratedIntColumn(
      'number_value',
      $tableName,
      false,
    );
  }

  final VerificationMeta _textValueMeta = const VerificationMeta('textValue');
  GeneratedTextColumn _textValue;
  @override
  GeneratedTextColumn get textValue => _textValue ??= _constructTextValue();
  GeneratedTextColumn _constructTextValue() {
    return GeneratedTextColumn(
      'text_value',
      $tableName,
      false,
    );
  }

  final VerificationMeta _booleanValueMeta =
      const VerificationMeta('booleanValue');
  GeneratedBoolColumn _booleanValue;
  @override
  GeneratedBoolColumn get booleanValue =>
      _booleanValue ??= _constructBooleanValue();
  GeneratedBoolColumn _constructBooleanValue() {
    return GeneratedBoolColumn('boolean_value', $tableName, false,
        defaultValue: const Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [code, numberValue, textValue, booleanValue];
  @override
  $ParametersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'parameters';
  @override
  final String actualTableName = 'parameters';
  @override
  VerificationContext validateIntegrity(Insertable<Parameter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code'], _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('number_value')) {
      context.handle(
          _numberValueMeta,
          numberValue.isAcceptableOrUnknown(
              data['number_value'], _numberValueMeta));
    } else if (isInserting) {
      context.missing(_numberValueMeta);
    }
    if (data.containsKey('text_value')) {
      context.handle(_textValueMeta,
          textValue.isAcceptableOrUnknown(data['text_value'], _textValueMeta));
    } else if (isInserting) {
      context.missing(_textValueMeta);
    }
    if (data.containsKey('boolean_value')) {
      context.handle(
          _booleanValueMeta,
          booleanValue.isAcceptableOrUnknown(
              data['boolean_value'], _booleanValueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {code};
  @override
  Parameter map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Parameter.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ParametersTable createAlias(String alias) {
    return $ParametersTable(_db, alias);
  }
}

class AlarmHeader extends DataClass implements Insertable<AlarmHeader> {
  final int id;
  final DateTime time;
  final bool valid;
  final bool mondayValid;
  final bool tuesdayValid;
  final bool wednesdayValid;
  final bool thursdayValid;
  final bool fridayValid;
  final bool saturdayValid;
  final bool sundayValid;
  final int walkTime;
  final String audioPath;
  final String audioName;
  AlarmHeader(
      {@required this.id,
      @required this.time,
      @required this.valid,
      @required this.mondayValid,
      @required this.tuesdayValid,
      @required this.wednesdayValid,
      @required this.thursdayValid,
      @required this.fridayValid,
      @required this.saturdayValid,
      @required this.sundayValid,
      @required this.walkTime,
      @required this.audioPath,
      @required this.audioName});
  factory AlarmHeader.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    return AlarmHeader(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      time: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}time']),
      valid: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}valid']),
      mondayValid: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}monday_valid']),
      tuesdayValid: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tuesday_valid']),
      wednesdayValid: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}wednesday_valid']),
      thursdayValid: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}thursday_valid']),
      fridayValid: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}friday_valid']),
      saturdayValid: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}saturday_valid']),
      sundayValid: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sunday_valid']),
      walkTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}walk_time']),
      audioPath: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audio_path']),
      audioName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audio_name']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || time != null) {
      map['time'] = Variable<DateTime>(time);
    }
    if (!nullToAbsent || valid != null) {
      map['valid'] = Variable<bool>(valid);
    }
    if (!nullToAbsent || mondayValid != null) {
      map['monday_valid'] = Variable<bool>(mondayValid);
    }
    if (!nullToAbsent || tuesdayValid != null) {
      map['tuesday_valid'] = Variable<bool>(tuesdayValid);
    }
    if (!nullToAbsent || wednesdayValid != null) {
      map['wednesday_valid'] = Variable<bool>(wednesdayValid);
    }
    if (!nullToAbsent || thursdayValid != null) {
      map['thursday_valid'] = Variable<bool>(thursdayValid);
    }
    if (!nullToAbsent || fridayValid != null) {
      map['friday_valid'] = Variable<bool>(fridayValid);
    }
    if (!nullToAbsent || saturdayValid != null) {
      map['saturday_valid'] = Variable<bool>(saturdayValid);
    }
    if (!nullToAbsent || sundayValid != null) {
      map['sunday_valid'] = Variable<bool>(sundayValid);
    }
    if (!nullToAbsent || walkTime != null) {
      map['walk_time'] = Variable<int>(walkTime);
    }
    if (!nullToAbsent || audioPath != null) {
      map['audio_path'] = Variable<String>(audioPath);
    }
    if (!nullToAbsent || audioName != null) {
      map['audio_name'] = Variable<String>(audioName);
    }
    return map;
  }

  AlarmHeadersCompanion toCompanion(bool nullToAbsent) {
    return AlarmHeadersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      time: time == null && nullToAbsent ? const Value.absent() : Value(time),
      valid:
          valid == null && nullToAbsent ? const Value.absent() : Value(valid),
      mondayValid: mondayValid == null && nullToAbsent
          ? const Value.absent()
          : Value(mondayValid),
      tuesdayValid: tuesdayValid == null && nullToAbsent
          ? const Value.absent()
          : Value(tuesdayValid),
      wednesdayValid: wednesdayValid == null && nullToAbsent
          ? const Value.absent()
          : Value(wednesdayValid),
      thursdayValid: thursdayValid == null && nullToAbsent
          ? const Value.absent()
          : Value(thursdayValid),
      fridayValid: fridayValid == null && nullToAbsent
          ? const Value.absent()
          : Value(fridayValid),
      saturdayValid: saturdayValid == null && nullToAbsent
          ? const Value.absent()
          : Value(saturdayValid),
      sundayValid: sundayValid == null && nullToAbsent
          ? const Value.absent()
          : Value(sundayValid),
      walkTime: walkTime == null && nullToAbsent
          ? const Value.absent()
          : Value(walkTime),
      audioPath: audioPath == null && nullToAbsent
          ? const Value.absent()
          : Value(audioPath),
      audioName: audioName == null && nullToAbsent
          ? const Value.absent()
          : Value(audioName),
    );
  }

  factory AlarmHeader.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AlarmHeader(
      id: serializer.fromJson<int>(json['id']),
      time: serializer.fromJson<DateTime>(json['time']),
      valid: serializer.fromJson<bool>(json['valid']),
      mondayValid: serializer.fromJson<bool>(json['mondayValid']),
      tuesdayValid: serializer.fromJson<bool>(json['tuesdayValid']),
      wednesdayValid: serializer.fromJson<bool>(json['wednesdayValid']),
      thursdayValid: serializer.fromJson<bool>(json['thursdayValid']),
      fridayValid: serializer.fromJson<bool>(json['fridayValid']),
      saturdayValid: serializer.fromJson<bool>(json['saturdayValid']),
      sundayValid: serializer.fromJson<bool>(json['sundayValid']),
      walkTime: serializer.fromJson<int>(json['walkTime']),
      audioPath: serializer.fromJson<String>(json['audioPath']),
      audioName: serializer.fromJson<String>(json['audioName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'time': serializer.toJson<DateTime>(time),
      'valid': serializer.toJson<bool>(valid),
      'mondayValid': serializer.toJson<bool>(mondayValid),
      'tuesdayValid': serializer.toJson<bool>(tuesdayValid),
      'wednesdayValid': serializer.toJson<bool>(wednesdayValid),
      'thursdayValid': serializer.toJson<bool>(thursdayValid),
      'fridayValid': serializer.toJson<bool>(fridayValid),
      'saturdayValid': serializer.toJson<bool>(saturdayValid),
      'sundayValid': serializer.toJson<bool>(sundayValid),
      'walkTime': serializer.toJson<int>(walkTime),
      'audioPath': serializer.toJson<String>(audioPath),
      'audioName': serializer.toJson<String>(audioName),
    };
  }

  AlarmHeader copyWith(
          {int id,
          DateTime time,
          bool valid,
          bool mondayValid,
          bool tuesdayValid,
          bool wednesdayValid,
          bool thursdayValid,
          bool fridayValid,
          bool saturdayValid,
          bool sundayValid,
          int walkTime,
          String audioPath,
          String audioName}) =>
      AlarmHeader(
        id: id ?? this.id,
        time: time ?? this.time,
        valid: valid ?? this.valid,
        mondayValid: mondayValid ?? this.mondayValid,
        tuesdayValid: tuesdayValid ?? this.tuesdayValid,
        wednesdayValid: wednesdayValid ?? this.wednesdayValid,
        thursdayValid: thursdayValid ?? this.thursdayValid,
        fridayValid: fridayValid ?? this.fridayValid,
        saturdayValid: saturdayValid ?? this.saturdayValid,
        sundayValid: sundayValid ?? this.sundayValid,
        walkTime: walkTime ?? this.walkTime,
        audioPath: audioPath ?? this.audioPath,
        audioName: audioName ?? this.audioName,
      );
  @override
  String toString() {
    return (StringBuffer('AlarmHeader(')
          ..write('id: $id, ')
          ..write('time: $time, ')
          ..write('valid: $valid, ')
          ..write('mondayValid: $mondayValid, ')
          ..write('tuesdayValid: $tuesdayValid, ')
          ..write('wednesdayValid: $wednesdayValid, ')
          ..write('thursdayValid: $thursdayValid, ')
          ..write('fridayValid: $fridayValid, ')
          ..write('saturdayValid: $saturdayValid, ')
          ..write('sundayValid: $sundayValid, ')
          ..write('walkTime: $walkTime, ')
          ..write('audioPath: $audioPath, ')
          ..write('audioName: $audioName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          time.hashCode,
          $mrjc(
              valid.hashCode,
              $mrjc(
                  mondayValid.hashCode,
                  $mrjc(
                      tuesdayValid.hashCode,
                      $mrjc(
                          wednesdayValid.hashCode,
                          $mrjc(
                              thursdayValid.hashCode,
                              $mrjc(
                                  fridayValid.hashCode,
                                  $mrjc(
                                      saturdayValid.hashCode,
                                      $mrjc(
                                          sundayValid.hashCode,
                                          $mrjc(
                                              walkTime.hashCode,
                                              $mrjc(
                                                  audioPath.hashCode,
                                                  audioName
                                                      .hashCode)))))))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AlarmHeader &&
          other.id == this.id &&
          other.time == this.time &&
          other.valid == this.valid &&
          other.mondayValid == this.mondayValid &&
          other.tuesdayValid == this.tuesdayValid &&
          other.wednesdayValid == this.wednesdayValid &&
          other.thursdayValid == this.thursdayValid &&
          other.fridayValid == this.fridayValid &&
          other.saturdayValid == this.saturdayValid &&
          other.sundayValid == this.sundayValid &&
          other.walkTime == this.walkTime &&
          other.audioPath == this.audioPath &&
          other.audioName == this.audioName);
}

class AlarmHeadersCompanion extends UpdateCompanion<AlarmHeader> {
  final Value<int> id;
  final Value<DateTime> time;
  final Value<bool> valid;
  final Value<bool> mondayValid;
  final Value<bool> tuesdayValid;
  final Value<bool> wednesdayValid;
  final Value<bool> thursdayValid;
  final Value<bool> fridayValid;
  final Value<bool> saturdayValid;
  final Value<bool> sundayValid;
  final Value<int> walkTime;
  final Value<String> audioPath;
  final Value<String> audioName;
  const AlarmHeadersCompanion({
    this.id = const Value.absent(),
    this.time = const Value.absent(),
    this.valid = const Value.absent(),
    this.mondayValid = const Value.absent(),
    this.tuesdayValid = const Value.absent(),
    this.wednesdayValid = const Value.absent(),
    this.thursdayValid = const Value.absent(),
    this.fridayValid = const Value.absent(),
    this.saturdayValid = const Value.absent(),
    this.sundayValid = const Value.absent(),
    this.walkTime = const Value.absent(),
    this.audioPath = const Value.absent(),
    this.audioName = const Value.absent(),
  });
  AlarmHeadersCompanion.insert({
    this.id = const Value.absent(),
    @required DateTime time,
    @required bool valid,
    @required bool mondayValid,
    @required bool tuesdayValid,
    @required bool wednesdayValid,
    @required bool thursdayValid,
    @required bool fridayValid,
    @required bool saturdayValid,
    @required bool sundayValid,
    @required int walkTime,
    @required String audioPath,
    @required String audioName,
  })  : time = Value(time),
        valid = Value(valid),
        mondayValid = Value(mondayValid),
        tuesdayValid = Value(tuesdayValid),
        wednesdayValid = Value(wednesdayValid),
        thursdayValid = Value(thursdayValid),
        fridayValid = Value(fridayValid),
        saturdayValid = Value(saturdayValid),
        sundayValid = Value(sundayValid),
        walkTime = Value(walkTime),
        audioPath = Value(audioPath),
        audioName = Value(audioName);
  static Insertable<AlarmHeader> custom({
    Expression<int> id,
    Expression<DateTime> time,
    Expression<bool> valid,
    Expression<bool> mondayValid,
    Expression<bool> tuesdayValid,
    Expression<bool> wednesdayValid,
    Expression<bool> thursdayValid,
    Expression<bool> fridayValid,
    Expression<bool> saturdayValid,
    Expression<bool> sundayValid,
    Expression<int> walkTime,
    Expression<String> audioPath,
    Expression<String> audioName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (time != null) 'time': time,
      if (valid != null) 'valid': valid,
      if (mondayValid != null) 'monday_valid': mondayValid,
      if (tuesdayValid != null) 'tuesday_valid': tuesdayValid,
      if (wednesdayValid != null) 'wednesday_valid': wednesdayValid,
      if (thursdayValid != null) 'thursday_valid': thursdayValid,
      if (fridayValid != null) 'friday_valid': fridayValid,
      if (saturdayValid != null) 'saturday_valid': saturdayValid,
      if (sundayValid != null) 'sunday_valid': sundayValid,
      if (walkTime != null) 'walk_time': walkTime,
      if (audioPath != null) 'audio_path': audioPath,
      if (audioName != null) 'audio_name': audioName,
    });
  }

  AlarmHeadersCompanion copyWith(
      {Value<int> id,
      Value<DateTime> time,
      Value<bool> valid,
      Value<bool> mondayValid,
      Value<bool> tuesdayValid,
      Value<bool> wednesdayValid,
      Value<bool> thursdayValid,
      Value<bool> fridayValid,
      Value<bool> saturdayValid,
      Value<bool> sundayValid,
      Value<int> walkTime,
      Value<String> audioPath,
      Value<String> audioName}) {
    return AlarmHeadersCompanion(
      id: id ?? this.id,
      time: time ?? this.time,
      valid: valid ?? this.valid,
      mondayValid: mondayValid ?? this.mondayValid,
      tuesdayValid: tuesdayValid ?? this.tuesdayValid,
      wednesdayValid: wednesdayValid ?? this.wednesdayValid,
      thursdayValid: thursdayValid ?? this.thursdayValid,
      fridayValid: fridayValid ?? this.fridayValid,
      saturdayValid: saturdayValid ?? this.saturdayValid,
      sundayValid: sundayValid ?? this.sundayValid,
      walkTime: walkTime ?? this.walkTime,
      audioPath: audioPath ?? this.audioPath,
      audioName: audioName ?? this.audioName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (time.present) {
      map['time'] = Variable<DateTime>(time.value);
    }
    if (valid.present) {
      map['valid'] = Variable<bool>(valid.value);
    }
    if (mondayValid.present) {
      map['monday_valid'] = Variable<bool>(mondayValid.value);
    }
    if (tuesdayValid.present) {
      map['tuesday_valid'] = Variable<bool>(tuesdayValid.value);
    }
    if (wednesdayValid.present) {
      map['wednesday_valid'] = Variable<bool>(wednesdayValid.value);
    }
    if (thursdayValid.present) {
      map['thursday_valid'] = Variable<bool>(thursdayValid.value);
    }
    if (fridayValid.present) {
      map['friday_valid'] = Variable<bool>(fridayValid.value);
    }
    if (saturdayValid.present) {
      map['saturday_valid'] = Variable<bool>(saturdayValid.value);
    }
    if (sundayValid.present) {
      map['sunday_valid'] = Variable<bool>(sundayValid.value);
    }
    if (walkTime.present) {
      map['walk_time'] = Variable<int>(walkTime.value);
    }
    if (audioPath.present) {
      map['audio_path'] = Variable<String>(audioPath.value);
    }
    if (audioName.present) {
      map['audio_name'] = Variable<String>(audioName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AlarmHeadersCompanion(')
          ..write('id: $id, ')
          ..write('time: $time, ')
          ..write('valid: $valid, ')
          ..write('mondayValid: $mondayValid, ')
          ..write('tuesdayValid: $tuesdayValid, ')
          ..write('wednesdayValid: $wednesdayValid, ')
          ..write('thursdayValid: $thursdayValid, ')
          ..write('fridayValid: $fridayValid, ')
          ..write('saturdayValid: $saturdayValid, ')
          ..write('sundayValid: $sundayValid, ')
          ..write('walkTime: $walkTime, ')
          ..write('audioPath: $audioPath, ')
          ..write('audioName: $audioName')
          ..write(')'))
        .toString();
  }
}

class $AlarmHeadersTable extends AlarmHeaders
    with TableInfo<$AlarmHeadersTable, AlarmHeader> {
  final GeneratedDatabase _db;
  final String _alias;
  $AlarmHeadersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _timeMeta = const VerificationMeta('time');
  GeneratedDateTimeColumn _time;
  @override
  GeneratedDateTimeColumn get time => _time ??= _constructTime();
  GeneratedDateTimeColumn _constructTime() {
    return GeneratedDateTimeColumn(
      'time',
      $tableName,
      false,
    );
  }

  final VerificationMeta _validMeta = const VerificationMeta('valid');
  GeneratedBoolColumn _valid;
  @override
  GeneratedBoolColumn get valid => _valid ??= _constructValid();
  GeneratedBoolColumn _constructValid() {
    return GeneratedBoolColumn(
      'valid',
      $tableName,
      false,
    );
  }

  final VerificationMeta _mondayValidMeta =
      const VerificationMeta('mondayValid');
  GeneratedBoolColumn _mondayValid;
  @override
  GeneratedBoolColumn get mondayValid =>
      _mondayValid ??= _constructMondayValid();
  GeneratedBoolColumn _constructMondayValid() {
    return GeneratedBoolColumn(
      'monday_valid',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tuesdayValidMeta =
      const VerificationMeta('tuesdayValid');
  GeneratedBoolColumn _tuesdayValid;
  @override
  GeneratedBoolColumn get tuesdayValid =>
      _tuesdayValid ??= _constructTuesdayValid();
  GeneratedBoolColumn _constructTuesdayValid() {
    return GeneratedBoolColumn(
      'tuesday_valid',
      $tableName,
      false,
    );
  }

  final VerificationMeta _wednesdayValidMeta =
      const VerificationMeta('wednesdayValid');
  GeneratedBoolColumn _wednesdayValid;
  @override
  GeneratedBoolColumn get wednesdayValid =>
      _wednesdayValid ??= _constructWednesdayValid();
  GeneratedBoolColumn _constructWednesdayValid() {
    return GeneratedBoolColumn(
      'wednesday_valid',
      $tableName,
      false,
    );
  }

  final VerificationMeta _thursdayValidMeta =
      const VerificationMeta('thursdayValid');
  GeneratedBoolColumn _thursdayValid;
  @override
  GeneratedBoolColumn get thursdayValid =>
      _thursdayValid ??= _constructThursdayValid();
  GeneratedBoolColumn _constructThursdayValid() {
    return GeneratedBoolColumn(
      'thursday_valid',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fridayValidMeta =
      const VerificationMeta('fridayValid');
  GeneratedBoolColumn _fridayValid;
  @override
  GeneratedBoolColumn get fridayValid =>
      _fridayValid ??= _constructFridayValid();
  GeneratedBoolColumn _constructFridayValid() {
    return GeneratedBoolColumn(
      'friday_valid',
      $tableName,
      false,
    );
  }

  final VerificationMeta _saturdayValidMeta =
      const VerificationMeta('saturdayValid');
  GeneratedBoolColumn _saturdayValid;
  @override
  GeneratedBoolColumn get saturdayValid =>
      _saturdayValid ??= _constructSaturdayValid();
  GeneratedBoolColumn _constructSaturdayValid() {
    return GeneratedBoolColumn(
      'saturday_valid',
      $tableName,
      false,
    );
  }

  final VerificationMeta _sundayValidMeta =
      const VerificationMeta('sundayValid');
  GeneratedBoolColumn _sundayValid;
  @override
  GeneratedBoolColumn get sundayValid =>
      _sundayValid ??= _constructSundayValid();
  GeneratedBoolColumn _constructSundayValid() {
    return GeneratedBoolColumn(
      'sunday_valid',
      $tableName,
      false,
    );
  }

  final VerificationMeta _walkTimeMeta = const VerificationMeta('walkTime');
  GeneratedIntColumn _walkTime;
  @override
  GeneratedIntColumn get walkTime => _walkTime ??= _constructWalkTime();
  GeneratedIntColumn _constructWalkTime() {
    return GeneratedIntColumn(
      'walk_time',
      $tableName,
      false,
    );
  }

  final VerificationMeta _audioPathMeta = const VerificationMeta('audioPath');
  GeneratedTextColumn _audioPath;
  @override
  GeneratedTextColumn get audioPath => _audioPath ??= _constructAudioPath();
  GeneratedTextColumn _constructAudioPath() {
    return GeneratedTextColumn(
      'audio_path',
      $tableName,
      false,
    );
  }

  final VerificationMeta _audioNameMeta = const VerificationMeta('audioName');
  GeneratedTextColumn _audioName;
  @override
  GeneratedTextColumn get audioName => _audioName ??= _constructAudioName();
  GeneratedTextColumn _constructAudioName() {
    return GeneratedTextColumn(
      'audio_name',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        time,
        valid,
        mondayValid,
        tuesdayValid,
        wednesdayValid,
        thursdayValid,
        fridayValid,
        saturdayValid,
        sundayValid,
        walkTime,
        audioPath,
        audioName
      ];
  @override
  $AlarmHeadersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'alarm_headers';
  @override
  final String actualTableName = 'alarm_headers';
  @override
  VerificationContext validateIntegrity(Insertable<AlarmHeader> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time'], _timeMeta));
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('valid')) {
      context.handle(
          _validMeta, valid.isAcceptableOrUnknown(data['valid'], _validMeta));
    } else if (isInserting) {
      context.missing(_validMeta);
    }
    if (data.containsKey('monday_valid')) {
      context.handle(
          _mondayValidMeta,
          mondayValid.isAcceptableOrUnknown(
              data['monday_valid'], _mondayValidMeta));
    } else if (isInserting) {
      context.missing(_mondayValidMeta);
    }
    if (data.containsKey('tuesday_valid')) {
      context.handle(
          _tuesdayValidMeta,
          tuesdayValid.isAcceptableOrUnknown(
              data['tuesday_valid'], _tuesdayValidMeta));
    } else if (isInserting) {
      context.missing(_tuesdayValidMeta);
    }
    if (data.containsKey('wednesday_valid')) {
      context.handle(
          _wednesdayValidMeta,
          wednesdayValid.isAcceptableOrUnknown(
              data['wednesday_valid'], _wednesdayValidMeta));
    } else if (isInserting) {
      context.missing(_wednesdayValidMeta);
    }
    if (data.containsKey('thursday_valid')) {
      context.handle(
          _thursdayValidMeta,
          thursdayValid.isAcceptableOrUnknown(
              data['thursday_valid'], _thursdayValidMeta));
    } else if (isInserting) {
      context.missing(_thursdayValidMeta);
    }
    if (data.containsKey('friday_valid')) {
      context.handle(
          _fridayValidMeta,
          fridayValid.isAcceptableOrUnknown(
              data['friday_valid'], _fridayValidMeta));
    } else if (isInserting) {
      context.missing(_fridayValidMeta);
    }
    if (data.containsKey('saturday_valid')) {
      context.handle(
          _saturdayValidMeta,
          saturdayValid.isAcceptableOrUnknown(
              data['saturday_valid'], _saturdayValidMeta));
    } else if (isInserting) {
      context.missing(_saturdayValidMeta);
    }
    if (data.containsKey('sunday_valid')) {
      context.handle(
          _sundayValidMeta,
          sundayValid.isAcceptableOrUnknown(
              data['sunday_valid'], _sundayValidMeta));
    } else if (isInserting) {
      context.missing(_sundayValidMeta);
    }
    if (data.containsKey('walk_time')) {
      context.handle(_walkTimeMeta,
          walkTime.isAcceptableOrUnknown(data['walk_time'], _walkTimeMeta));
    } else if (isInserting) {
      context.missing(_walkTimeMeta);
    }
    if (data.containsKey('audio_path')) {
      context.handle(_audioPathMeta,
          audioPath.isAcceptableOrUnknown(data['audio_path'], _audioPathMeta));
    } else if (isInserting) {
      context.missing(_audioPathMeta);
    }
    if (data.containsKey('audio_name')) {
      context.handle(_audioNameMeta,
          audioName.isAcceptableOrUnknown(data['audio_name'], _audioNameMeta));
    } else if (isInserting) {
      context.missing(_audioNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AlarmHeader map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return AlarmHeader.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $AlarmHeadersTable createAlias(String alias) {
    return $AlarmHeadersTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ParametersTable _parameters;
  $ParametersTable get parameters => _parameters ??= $ParametersTable(this);
  $AlarmHeadersTable _alarmHeaders;
  $AlarmHeadersTable get alarmHeaders =>
      _alarmHeaders ??= $AlarmHeadersTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [parameters, alarmHeaders];
}
