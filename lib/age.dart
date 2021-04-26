import 'dart:io';

class calc {
  static int ageyear=0 ;
  static int agemonth=0 ;
  static int ageday=0 ;
  static int agesec=0 ;

 int year(  int y){



   ageyear = DateTime.now().year - y;
   if (ageyear <0 ){
     ageyear = ageyear *-1 ;
     return ageyear;



   }
   else
   return ageyear;
print ("your Age is $ageyear years old");

}
int month(int m){

agemonth = DateTime.now().month - m ;
if (agemonth <0 ){
  agemonth = agemonth *-1 ;
  return agemonth;

}
return agemonth;
   print ("your Age is $agemonth monthes old");

}
int days(int d){
   int agedays=DateTime.now().day - d ;
   if (ageday <0 ){
     ageday = ageday *-1 ;
     return ageday;

   }
return agedays;
   print ("your Age is $agedays days old");



}



}