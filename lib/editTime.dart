import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart';
import 'dart:io';

import 'db.dart';

class EditTimeWidget extends StatefulWidget {
  final int alarmHeaderId;

  // 以下を実装、コンストラクタで値を受領
  EditTimeWidget({this.alarmHeaderId});

  @override
  _EditTimeWidgetState createState() => _EditTimeWidgetState();
}

class _EditTimeWidgetState extends State<EditTimeWidget> {
  var _textController = TextEditingController();
  List<bool> checkList = [];
  List<String> dayList = [];
  final Color headcolor = Colors.blueAccent;
  String _labelText = "Select Value";
  double _sliderValue = 0;
  TimeOfDay tod=TimeOfDay(hour:0,minute:0);
  String audioName="No Music";
  String audioPath="";
  AlarmHeader ah=null;

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 7; i++) {
      checkList.add(false);
    }
    dayList.add("Monday");
    dayList.add("Tuesday");
    dayList.add("Wednesday");
    dayList.add("Thursday");
    dayList.add("Friday");
    dayList.add("Saturday");
    dayList.add("Sunday");

    if(widget.alarmHeaderId==null) {

    }else if(ah!=null){
      checkList[0]=ah.mondayValid;
      checkList[1]=ah.tuesdayValid;
      checkList[2]=ah.wednesdayValid;
      checkList[3]=ah.thursdayValid;
      checkList[4]=ah.fridayValid;
      checkList[5]=ah.saturdayValid;
      checkList[6]=ah.sundayValid;
      _sliderValue = ah.walkTime.toDouble();
      tod=TimeOfDay(hour:ah.time.hour,minute: ah.time.minute);
      audioPath=ah.audioPath;
      audioName=ah.audioName;

    }else{
      loadAsset(widget.alarmHeaderId);
    }


    print("Loglog");
    print(ah.id);
    print(ah.mondayValid);
    print(checkList[0]);

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Icon(Icons.home_sharp),
          title: Text(""),
          backgroundColor: headcolor,
          actions: [],
        ),
        body: Column(
          children: [
            Container(
                height: 150,
                child: CupertinoTheme(
                    data: CupertinoThemeData(
                      textTheme: CupertinoTextThemeData(
                        dateTimePickerTextStyle: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.time,
                      initialDateTime: DateTime(1990, 1, 1, 12, 00),
                      onDateTimeChanged: (DateTime newDateTime) {
                        tod = TimeOfDay.fromDateTime(newDateTime);

                      },
                      use24hFormat: false,
                      minuteInterval: 5,
                    ))),
            for (int i = 0; i < 7; i++)
              Container(
                height: 30,
                child: CheckboxListTile(
                  value: checkList[i],
                  title: Text(
                    dayList[i],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool value) {
                    setState(() {
                      checkList[i] = value;
                    });
                  },
                ),
              ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    _labelText,
                    style: TextStyle(fontSize: 24),
                  ),
                  Slider(
                    value: _sliderValue,
                    min: 0,
                    max: 100,
                    divisions: 5,
                    onChanged: (double value) {
                      setState(() {
                        _sliderValue = value.roundToDouble();
                        _labelText = 'value = $_sliderValue';
                      });
                    },
                  )
                ],
              ),
            ),
    InkWell(
    onTap: () async{
      File file = await FilePicker.getFile(type:FileType.audio);
      audioPath = file.path;
      setState(() {
        audioName = basename(audioPath);
      });
    },
    child:Container(
              height: 30,
              child: Card(
                child: Text(
                  audioName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
    ),
            Container(
              padding: const EdgeInsets.all(6),
              margin: EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 4.0),
              child: SizedBox(
                width: 220,
                height: 60,
                child: OutlinedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    //TODO set actual values
                    ah = AlarmHeader(
                        id: null,
                        time: DateTime(1900, 1, 1, tod.hour, tod.minute),
                        valid: true,
                        mondayValid: checkList[0],
                        tuesdayValid: checkList[1],
                        wednesdayValid: checkList[2],
                        thursdayValid: checkList[3],
                        fridayValid: checkList[4],
                        saturdayValid: checkList[5],
                        sundayValid: checkList[6],
                        walkTime: _sliderValue.toInt(),
                      audioPath: audioPath,
                      audioName: audioName
                    );
                    MyDatabase().insertalarmheader(ah);

                    Navigator.pop(context);
                    //Navigator.push(
                    //    context, MaterialPageRoute(builder: (context) => Answer()));
                  },
                  child: Text(
                    "OK",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }


  void loadAsset(int id) async {
    MyDatabase db = MyDatabase();
    List<AlarmHeader>ahList =
    await db.selectAlarmHeaderById(id);
    setState(() {
      this.ah = ahList[0];
    });
  }
}
