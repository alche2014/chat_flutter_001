import 'package:task_blackwhite_02/LeaveManagement/LeaveHistory/LeaveHistory.dart';

class Leaves {
  String? name;
  String? approval = 'apd';

  String? body =
      'Hello guys we have discussed about post-corona vacation plan and our decision is to go to bali';

  Leaves({this.name, this.body, this.approval});
}

List<Leaves> demoLeaves = [
  Leaves(name: 'Leave Type', body: body, approval: approved),
  Leaves(name: 'Leave Type', body: '', approval: 'no'),
  Leaves(name: 'Leave Type', body: body, approval: approved),
  Leaves(name: 'Leave Type', body: body, approval: approved),
];
