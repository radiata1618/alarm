import 'package:alarm/db.dart';

class DataMigrant {

  void dataReset() async {
    MyDatabase db = MyDatabase();


    await initialDataCreate(db);
  }


}

Future<void> initialDataCreate(MyDatabase db) {


  AlarmHeader ah = AlarmHeader(id:0
      ,time:DateTime(1900, 1, 1, 6, 0)
      ,valid:true
      ,mondayValid:true
      ,tuesdayValid:true
      ,wednesdayValid:true
      ,thursdayValid:true
      ,fridayValid:true
      ,saturdayValid:true
      ,sundayValid:true
      ,walkTime:10);
  db.insertalarmheader(ah);

}