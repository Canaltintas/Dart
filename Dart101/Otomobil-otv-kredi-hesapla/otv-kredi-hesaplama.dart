void main(){
final tesla = Otomobiller("Tesla", "Model X", 492, "Elektrik", 100000);
final jaguar = Otomobiller("Jaguar", "Type Z", 2.0, "Benzin", 100000);
final ford = Otomobiller("Ford", "Model S", 1.6, "Dizel", 100000);

final person = Person("Can", "Altıntaş", 5, 30000);
final person2 = Person("John", "Doe", 5, 50000);
final person3 = Person("Random", "Person", 1, 60000);
tesla.finalFiyat = tax(tesla.vergisizSatisFiyati, taxRate(tesla.motorHacmi, tesla.motorTipi), 20);
jaguar.finalFiyat = tax(jaguar.vergisizSatisFiyati, taxRate(jaguar.motorHacmi, jaguar.motorTipi), 20);
ford.finalFiyat = tax(ford.vergisizSatisFiyati, taxRate(jaguar.motorHacmi, jaguar.motorTipi), 20);
final krediTutari = krediCalculate(tesla.satisFiyati, person.krediScore, person.pesinatTutari, 48);
if(krediTutari > 0) {
  person.krediUygunluk=true;
}
print(person);
print(tesla);
print('Toplam Ödenecek Kredi Tutarı : $krediTutari TL ');


//print(krediCalculate(100000, 1, 50000, 48));


//print(tax(ford.vergisizSatisFiyati, 110, 20));

}

class Otomobiller {
  String marka;
  String model;
  double motorHacmi;
  String motorTipi;
  double vergisizSatisFiyati;
  double finalFiyat;

  Otomobiller(this.marka, this.model, this.motorHacmi, this.motorTipi,
      this.vergisizSatisFiyati) : finalFiyat = 0.0;

  double get satisFiyati {
    return finalFiyat;
  }
  set satisFiyati(double value){
    finalFiyat=value;
  }

  @override
  String toString(){
    return 'Marka : $marka , Model: $model , Motor Hacmi : $motorHacmi, Motor Tipi : $motorTipi , Satış Fiyatı : $finalFiyat';
  }
}

class Person
{

String adi;
String soyAdi;
int krediScore;
double pesinatTutari;
bool krediUygunluk;


Person(this.adi, this.soyAdi, this.krediScore, this.pesinatTutari): krediUygunluk = false;

  @override
String toString(){
return 'Adı: $adi , Soyadı : $soyAdi, Kredi Skoru : $krediScore, Peşinat Tutarı : $pesinatTutari , Krediye Uygun mu : $krediUygunluk ';
}
}

double tax(double fiyat,int otvTutari,int kdvTutari){
  double tescilTutari = 557;
  double otvFiyat=(((fiyat*otvTutari)/100)+fiyat);
  double finalFiyat = ((otvFiyat*kdvTutari)/100)+otvFiyat;
  return  finalFiyat;

}
int taxRate(double motorHacmi,String motorTipi){
  if(identical(motorTipi, "Elektrik")){
    if(motorHacmi <= 85 ){
      return 10;
    }else if (motorHacmi <= 120){
      return 25;
    }else{
      return 60;
    }

  }else {
    if(motorHacmi < 1.6 ){
      return 45;
    }else if (motorHacmi >= 1.6 && motorHacmi <2.0 ){
      return 110;
    }else{
      return 220;
    }
  }

}

double krediCalculate(double aracFiyati,int krediSkoru,double pesinat,int vade){
  //kredi tutarı*(faiz*(1+faiz) taksit sayısı/(1+faiz) taksit sayısı-1)
  double krediTutari;
  double taksitTutari;
  double faizOrani;
  if(krediSkoru >=3 && krediSkoru < 5){
    faizOrani=30;
    if (pesinat >= (aracFiyati/2)){
      krediTutari =(aracFiyati/2) + ((aracFiyati/2)*(faizOrani/10)*vade);
      return krediTutari;
    }
  }else if(krediSkoru == 5){
    faizOrani =20;
    krediTutari =(aracFiyati-pesinat) + ((aracFiyati-pesinat)*(faizOrani/10)*vade);
    return krediTutari;
  }
  return 0;
}
