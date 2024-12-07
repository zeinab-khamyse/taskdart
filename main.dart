import 'dart:io';

Set<String> GuestNames = {};
bool Addname(String guestname) {
  if (GuestNames.contains(guestname))
    return false;
  else {
    GuestNames.add(guestname);
    return true;
  }
}

void DisplayList({String greeting = ''}) {
  for (var name in GuestNames) {
    print('$greeting $name');
  }
}

void main() {
  while (true) {
    print('enter guestname');
    String? guestname = stdin.readLineSync();
    if (guestname == null || guestname.trim().isEmpty) {
      break;
    }
    if (Addname(guestname)) {
      print('addition is success');
    } else {
      print('name is already exist');
    }
  }
  print('the final guest list');
  DisplayList(greeting: 'Welcome');
}
