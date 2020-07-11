main(List<String> args) {
  /**
   *  Math Operation 
   *    + , - , * , / , % 
   *   / int กับ int จะได้  double เสมอ
   *   int x = 4 / 2;        // Error: A value of type 'double' can't be assigned to a variable of type 'int'.
   *   int y = (int)(4 / 2); // Error: case แบบภาษา C ไม่ได้
   */
  int x1 = 4 ~/ 2; // Ok! แบบนี้ได้
  int x3 = (4 / 2).toInt(); // Ok! แบบนี้ได้
  /**
   * คำเตือน! ระวังสับสนกับคำสั่ง int.parse() กับ int.tryParse() ที่ใช้แปลง 
   * String --> int, เราไม่สามรถใช้ 2 คำสั่งนี้ในการแปลง double --> int
   */
  int cross = 5 * 5;
  int power = 5 ^ 2;

  int Mod = 10 % 4;
  print('divide : x1 = $x1   x3 = $x3  ');
  print('multiply : $cross');
  print('power : $power');
  print('mod : $Mod');
}
