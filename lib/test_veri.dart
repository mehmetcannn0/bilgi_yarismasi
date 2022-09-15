import './soru.dart';
import 'dart:math';

class TestVeri {
  List<int> _cozulenler = [0];
  int _soruIndex = 0;

  List<Soru> _soruBankasi = [
    Soru(
        soruMetni: "Titanic gelmiş geçmiş en büyük gemidir", soruYaniti: false),
    Soru(
        soruMetni: "Dünyadaki tavuk sayısı insan sayısından fazladır",
        soruYaniti: true),
    Soru(soruMetni: "Kelebeklerin ömrü bir gündür", soruYaniti: false),
    Soru(soruMetni: "Dünya düzdür", soruYaniti: false),
    Soru(
        soruMetni: "Kaju fıstığı aslında bir meyvenin sapıdır",
        soruYaniti: true),
    Soru(
        soruMetni: "Fatih Sultan Mehmet hiç patates yememiştir",
        soruYaniti: true),
    Soru(soruMetni: "Fransızlar 80 demek için, 4 - 20 der", soruYaniti: true),
    Soru(
        soruMetni:
            "Mehmet Akif İstiklal Marşını Ankara - Ayaş Dergahı'nda yazmıştır",
        soruYaniti: false),
    Soru(
        soruMetni:
            "Atatürk'ün yurt gezilerinde (1935-1938) yılları arasında kullandığı trenin adı Beyaz Tren'dir",
        soruYaniti: true),
    Soru(
        soruMetni: "Türkiye'nin ilk Safari Parkı Mersin ilimizde açılmıştır",
        soruYaniti: false),
    Soru(
        soruMetni:
            "Mehmet Akif Ersoy İstiklal Marşı telif ödülünü Darülfunun kurumunaa bağışlamıştır",
        soruYaniti: false),
    Soru(
        soruMetni:
            "Türkiye'nin en büyük kış ve doğa sporları merkezi olan Uludağ'ın eski adı 'Ulu Kuş Dağı'dir",
        soruYaniti: false),
    Soru(
        soruMetni:
            "Birleşmiş Milletler Dünya Turizm Örgütü'nün kısa adı 'UNOWT'tur",
        soruYaniti: false),
    Soru(
        soruMetni:
            "Büyük bir Destan olan 'BÜLBÜL' Bursa ilimizin işgali üzerine yazılmıştır",
        soruYaniti: true),
    Soru(
        soruMetni:
            "Tarihte Codex Cumanicus adıyla bilinen Sözlük Kıpçaklar Türk devletine aittir",
        soruYaniti: true),
    Soru(
        soruMetni:
            "Türkiye'de ilk Cep Telefonu görüşmesi Tansu Çiller ile Süleyman Demirel arasında 1992 yıl gerçekleşmiştir",
        soruYaniti: false),
    Soru(
        soruMetni:
            "Türkiye'de e-devlet uygulaması 2006 tarihte yürürlüğe girmiştir",
        soruYaniti: false),
    Soru(
        soruMetni:
            "21 Aralık tarihinde güney yarımkürede en uzun gündüz yaşanır",
        soruYaniti: true),
    Soru(
        soruMetni:
            "Şişhaneye Yağmur Yağıyordu, Keşanlı Ali Destanı, Gözlerimi Kaparım Vazifemi Yaparım,gibi eserleriyle tanınan yazarımız Haldun Taner'dir",
        soruYaniti: true),
    Soru(
        soruMetni: "'Yazımı kışa çevirdin' bir Aşık Veysel türküsü değildir",
        soruYaniti: true),
    Soru(
        soruMetni: "'Mavi Sürgün' Türk filmi Oscar aday adayı olmamıştır",
        soruYaniti: false),
    Soru(soruMetni: "Platon, İdealar Kuramının kurucusudur", soruYaniti: true),
    Soru(
        soruMetni:
            "Yer cekiminin varlıgını Newton'dan önce söylediği bilinen ünlü Türk İslam bilgini 'Biruni'dir",
        soruYaniti: true),
    Soru(
        soruMetni:
            "Atomun parçalanabileceğini ilk öne suren bilim insanı Cabir Bin Hayyan'dir",
        soruYaniti: true),
    Soru(
        soruMetni:
            "'Dünya tek bir devlet olsa başkenti İstanbul olurdu' diyen komutan Hitler'dir",
        soruYaniti: false),
    Soru(
        soruMetni:
            "Avrupa Birliğine katılmayı halk oylaması ile iki kere reddeden ülke İrlanda'dir",
        soruYaniti: false),
    Soru(
        soruMetni: "Gece ve Gündüz eşitliğine Dönence adi verilir",
        soruYaniti: false)
  ];

  String getSoruMetni() {
    return _soruBankasi[_soruIndex].soruMetni;
  }

  bool getSoruYaniti() {
    return _soruBankasi[_soruIndex].soruYaniti;
  }

  void sonrakiSoru() {
    int a = Random().nextInt(_soruBankasi.length);
    while (_cozulenler.indexOf(a) >= 0) {
      a = Random().nextInt(_soruBankasi.length);
    }
    ;
    _cozulenler.add(a);
    _soruIndex = a;
  }

  bool testBittiMi() {
    if (_soruBankasi.length <= _cozulenler.length) {
      print("bitti");
      return true;
    } else {
      return false;
    }
  }

  void testiSifirla() {
    _soruIndex = 0;
    _cozulenler = [0];
  }
}
