import 'dart:core';

main(List<String> args) {
  // Static variable
  StaticVariable();
  //Dynamic variable
  DynamicVariable();
}

void StaticVariable() {
  int DEFINE_NULL; //ตัวแปรที่ยังไม่ได้กำหนดค่าจะเป็น null

  /**
   * | type   |      คำอธิบาย           |  ตัวอย่าง                       |
   * |--------|:----------------------:|------------------------------:|
   * |  int 	|   เลขจำนวนเต็ม           |  0, 1, -5, 86400              |
   * | double |	  เลขทศนิยม 	          |  0.0, 0.1, 0.14, -12.34       |
   * | num 	  |เลขจำนวนเต็มหรือ เลขทศนิยม  | 	123, 0.123                  |
   * |  bool 	|   ค่าทางตรรกศาสตร์        |      true, false             |
   * | String | 	สายอักขระ (ประโยค)     |แนะนำให้ใช้ ' หรือ single quote  |
   * | dynamic| 	ตัวแปรชนิดเปลี่ยนแปลงได้   | 	1, 0.14, true, 'Hi!'        |
   */

  int x = 100;
  double d = 1.2;
  bool isDone = true;
  bool isNotdone = false;
  String name = "Dodo";
  print('--------Static Variable-------');
  print('int : $x ');
  print('double : $d');
  print('boolean(bool) : $isDone  $isNotdone');
  print('String : $name\n');
}

/**
ข้อแตกต่างระหว่าง dynamic vs var คือ

dynamic เป็นการบอกว่าตัวแปรนี้ เก็บค่าชนิดไหนก็ได้ เปลี่ยนแปลงได้เรื่อยๆ 
(หากใครเคยเขียนภาษา script น่าจะคุ้นกัน) แน่นอนว่าการใช้ dynamic มีความเสี่ยงทำให้เกิด 
runtime error! ได้เพราะ Compiler ไม่สามารถช่วยเช็กชนิดของตัวแปรได้เลย

var จะเป็นการกำหนดชนิดตัวแปรในจังหวะที่ประกาศตัวแปร โดยดูชนิดตัวแปรจาก value ตอนนั้นเลย 
หลังจากนั้นตัวแปรจะถูกกำหนดเป็น type นั้นไปตลอด ไม่สามารถเปลี่ยนแปลงได้แล้ว

 */
void DynamicVariable() {
  /**
   * | type   |      คำอธิบาย                                                |
   * |--------|:------------------------------------------------------------:|
   * |  var   | เป็นการละ type เอาไว้ให้โปรแกรมกำหนดให้ (ตาม value ตัวแรก)         |
   * |  final |   เหมือน var แต่ไม่สามารถเปลี่ยนแปลงค่าได้                          | 
   * |        | (ค่าที่ได้มาสามารถเอามาจาก ตัวแปรอื่น หรือ fuction อื่นได้)             |
   * |  const | ค่าคงที่ 
   * |        |(ไม่สามารถเอาตัวแปรจากฟังก์ชันอื่นมาใส่ได้ ต้องเป็นค่าที่ประกาศขึ้นมาเองเท่านั้น) |
   */
  print('--------Dynamic Variable-------');
  dynamic DYvalue = 1; // ตอนนี้ค่า d เก็บค่า int
  DYvalue = 'new value!'; // Ok! ค่า d เปลี่ยนไปเก็บค่า String แทน
  DYvalue = true; // Ok! ค่า d เปลี่ยนไปเก็บค่า bool แทน
  print("Dynamic Variable: $DYvalue");

  var VARvalue =
      1; // สร้างตัวแปร v ซึ่ง value ในด้านขวาเป็น int ดังนั้นจะมีผลเท่ากับการเขียนว่า int v = 1;
  VARvalue = 999;
  /*
    VARvalue =
        'new value'; // Error: A value of type 'String' can't be assigned to a variable of type 'int'
  */
  print('var Variable: $VARvalue');
}
