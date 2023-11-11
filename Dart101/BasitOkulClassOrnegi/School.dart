void main(){
final ogretmen = Ogretmen("Matematik", "John", "Doe", 12345);
final ogrenci = Ogrenci("9/B", "Albert", "Fakeson", 000900);

final mathClass = Sinif(ogretmen, ogrenci, "Matematik 101");

mathClass.Print();

}

abstract class Person{
 late String ad;
 late String soyAd;
 late  int sicilNo;

 Person(this.ad, this.soyAd, this.sicilNo);

  void SayHello(){
    print("Merhaba ben $ad, $soyAd");
  }
}

class Ogretmen extends Person {
  String brans;

  Ogretmen(this.brans,String ad,String soyAd,int sicilNo): super(ad,soyAd,sicilNo);

  @override
  void SayHello(){
    super.SayHello();
  }

}
class Ogrenci extends Person{
  String sinifi;

  Ogrenci(this.sinifi,String ad,String soyAd,int sicilNo): super(ad,soyAd,sicilNo);

  @override
  void SayHello(){
    super.SayHello();
    print("$sicilNo numaralı öğrenciyim");
  }
}

class Sinif <T extends Ogretmen , O extends Ogrenci>{
  T teacher;
  O student;
  String dersAdi;

  Sinif(this.teacher, this.student,this.dersAdi);

  void Print(){
    teacher.SayHello();
    print("$dersAdi dersini anlatıyorum");
    student.SayHello();
    print(" $dersAdi dersini öğreniyorum");

  }
}

