# TC KİMLİK NUMARASI ÜRETMEK VE DOĞRULUĞUNU KONTROL ETMEK;

## T.C. Kimlik numarası algoritması;
- TC Kimlik Numaraları 11 karakter olmak zorundadır.

- Her hanesi bir rakam olmaldır.

- İlk hanesi 0 (sıfır) olamaz

- 1, 3, 5, 7, 9 basamaklarının toplamının 7 katından, 2, 4, 6, 8 basamaklarının toplamını çıkarttığımızda elde ettiğimiz sonucun 10’a bölümünden kalan sayı (MOD10)  10. basamaktaki sayıyı vermelidir.

- İlk 10 hanenin toplamından elde edilen sonucun 10’a bölümünden kalan sayı (MOD10) 11. basamaktaki sayıyı vermelidir.

## TC NO ÜRETMEK
- 11 elemanlı liste üret
- dizinin ilk elemanı 0'dan farklı olmak üzere 9 rakam oluştur ve diziye ekle
- Dizinin 0,2,4,6,8 numaralı indexlerindeki değerleri topla ve 7 ile çarp. değerden 1,3,5,7 numaralı index değerlerinin toplamını çıkar. son değerin 10'a bölümünden kalanı listenin 9.indexine ekle.
- Dizideki ilk 10 değeri topla ve 10'a bölümünden kalanı 11. değere ekle.
- Listeki değeleri String ifade olarak birleştir ve değeri döndür.

## TC NO Kontrol ;
-String ifadenin ilk karakteri 0'dan farklı mı ?
-İfanedin 0,2,4,6,8 numaralı indexlerindeki değerlerin toplamının 7 katından 1,3,5,7 numaralı index değerlerinin toplamını çıkardığında, değerin 10'a bölümünden kalan ifadenin 9.indexine eşit mi ?
-İfadedeki ilk 10 karakterin toplamı 11. karaktere eşit mi ?
-evet ise return true, hayır ise false döndür.

