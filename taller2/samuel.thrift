const list<i32> num= [1,2,3,4,5]

enum french_suite {
    DIAMOND = 1,
    CLUB = 2, 
    HEART = 3,
    SPADE = 4
}    

struct Programa {
  1: i64 ID,
  2: string nombre,
  3: string apellido,
  4: optional string programa,
}

service BigData {

   void ping(),

   bool name(1:string nombre, 2:string apellido),

   double add(1:double fl1, 2:double fl2),

   oneway void receive(string str)

}
