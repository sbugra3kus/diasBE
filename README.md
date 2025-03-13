DiasBE Projesi
Bu proje, DiasBE adı verilen bir API test otomasyon projesidir. Proje, Karate, Cucumber, ve Java kullanarak API testlerini otomatikleştirmektedir.

Başlangıç
Gereksinimler
Bu projeyi çalıştırmak için aşağıdaki yazılımlara ihtiyacınız olacak:

Java 11+

Maven 3.6+

IntelliJ IDEA veya başka bir IDE

Kurulum
Projeyi yerel makinenize klonlamak için aşağıdaki adımları izleyin:

Proje dosyalarını indirin:

bash
git clone https://github.com/sbugra3kus/diasBE.git
cd diasBE
Bağımlılıkları yükleyin:

bash
mvn clean install
Testlerin Çalıştırılması
Projede yer alan testleri çalıştırmak için aşağıdaki adımları izleyin:

Testleri çalıştırın:

bash
mvn test
API Testleri
Projede yer alan API test senaryoları, src/test/java ve src/test/resources dizinlerinde bulunabilir. API uç noktaları ve kullanım detayları hakkında bilgi almak için bu dizinlerde yer alan dosyalara bakabilirsiniz.

Raporlama
Test sonuçları, target/cucumber-reports/ dizininde yer alan HTML raporlarında bulunabilir.

Proje Yapısı
src/main/java: Ana uygulama dosyalarının bulunduğu dizin.

src/test/java: Test dosyalarının bulunduğu dizin.

src/test/resources: Test senaryolarının ve yapılandırma dosyalarının bulunduğu dizin.

pom.xml: Maven proje yapılandırma dosyası.
