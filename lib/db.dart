import 'package:moor_flutter/moor_flutter.dart';

part 'db.g.dart';//generated when execute "flutter packages pub run build_runner watch" in terminal

class Parameters extends Table {
  TextColumn get code => text()();
  IntColumn get numberValue => integer()();
  TextColumn get textValue => text()();
  BoolColumn get booleanValue => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {code};
}


class AlarmHeaders extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get time => dateTime()();
  BoolColumn get valid => boolean()();
  BoolColumn get mondayValid => boolean()();
  BoolColumn get tuesdayValid => boolean()();
  BoolColumn get wednesdayValid => boolean()();
  BoolColumn get thursdayValid => boolean()();
  BoolColumn get fridayValid => boolean()();
  BoolColumn get saturdayValid => boolean()();
  BoolColumn get sundayValid => boolean()();
  IntColumn get walkTime => integer()();
  TextColumn get audioPath => text()();
  TextColumn get audioName => text()();

  @override
  Set<Column> get primaryKey => {id};
}
@UseMoor(
tables: [Parameters,AlarmHeaders]
)

class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite',
      logStatements: true));

  MyDatabase db;

  //@override
  MigrationStrategy get migration => destructiveFallback;

  @override
  int get schemaVersion => 4;


  Future <List<Parameter>> getAllparameters()=> select(parameters).get();
  Stream <List<Parameter>> watchAllparameters()=> select(parameters).watch();
  Future insertparameter(Parameter parameter)=> into(parameters).insert(parameter);
  Future updateparameter(Parameter parameter)=> update(parameters).replace(parameter);
  Future deleteparameter(Parameter parameter)=> delete(parameters).delete(parameter);


  Future <List<AlarmHeader>> getAllalarmheaders()=> select(alarmHeaders).get();
  Stream <List<AlarmHeader>> watchAllalarmheaders()=> select(alarmHeaders).watch();
  Future insertalarmheader(AlarmHeader alarmheader)=> into(alarmHeaders).insert(alarmheader);
  Future updatealarmheader(AlarmHeader alarmheader)=> update(alarmHeaders).replace(alarmheader);
  Future deletealarmheader(AlarmHeader alarmheader)=> delete(alarmHeaders).delete(alarmheader);



  Future<List<AlarmHeader>> selectAlarmHeaderById(int id) {
    return
      customSelect(
        'SELECT *'
            +'From alarm_Headers '
            +'WHERE id = ?;',
        variables: [Variable.withInt(id)],
        readsFrom: {alarmHeaders},
      ).map((row) => AlarmHeader(
          id :row.readInt('id')
          ,time:row.readDateTime('time')
          ,valid:row.readBool('valid')
          ,mondayValid:row.readBool('monday_valid')
          ,tuesdayValid:row.readBool('tueday_valid')
          ,wednesdayValid:row.readBool('wednesday_valid')
          ,thursdayValid:row.readBool('thursday_valid')
          ,fridayValid:row.readBool('friday_valid')
          ,saturdayValid:row.readBool('saturday_valid')
          ,sundayValid:row.readBool('sumday_valid')
          ,walkTime:row.readInt('walk_time')
          ,audioPath:row.readString('audio_path')
          ,audioName:row.readString('audio_name')
      )).get();
  }

}