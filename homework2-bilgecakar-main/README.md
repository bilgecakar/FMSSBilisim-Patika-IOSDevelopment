# HomeWork2
İkinci Ödev

          Haber Uygulaması
- [x] İlk sayfada Haberler Listelenicek.
- [x] Haberler   TableView yada # CollecitionView ile gösterilecek.
- [x] Habere tıklanınca  ilgili Haberin detay sayfası acılıcak.
- [x] Geçişler  Navigation Controller ile gerçekleştirilicek.
- [x] Haber Detayına gecerken Struct gönderip. Detay sayfasında Navigation Title bu structan alınıcak.
- [x] Detay sayfasındaki Description ( Açıklama ) bölümü gönderdiğimiz Streuctan alınıcak.
- [x] Detay sayfasının Description ( Acıklama ) bölümüne 20 px aralık ile Bir buton konumlandırılıcak. 
- [x] Detay sayfasındaki Butona bastığımızda 3. bir ekrana gidilicek.
- [x] 3. Ekranımızda Webview olucak ve ilgili Habere yönlendirilicek ( Burada istediğiniz siteye yönlendirme yapabilirsiniz Dumyy Haberlerle çalışıcaksınız. Örnek: https://www.google.com.tr/  )
- [x] CollectionView da bir row da 2 ve daha fazla Haber gösterebilen extra puan alıcaktır.
- [x] İsteyen Uygulamasını Icon Koyabilir.

## Sonuç

Haber uygulaması için haberlere ait verilerin tutulduğu bir struct yapısı oluşturdum. 
Haberlerin adını, kısa açıklamasını, resmini, yazarı, kategorisini, haberin websitesini ve haberin yayınlanma tarihini tutmaktadır.

```
struct News {
    let newsTitle: String            //Represent news's name
    let newsDescription: String      //Represent news's description
    let newsImage: String            //Represent news's image
    let newsUrl: String              //Represent news's website url
    let newsCategory: String         //Represent news's category name
    let newsDate: String             //Represent date of publication
    let newsWriter: String           //Represent writer's name who write news
}
```
Structtan extension ile dummy dataları atadım.

```
extension News {
    static let dummyData : [News] = [
        .init(
            newsTitle: "Stocks fall after FedEx warns of global recession",
            newsDescription: "US stocks fell on Friday after FedEx served investors a brutal pre-earnings announcement about the state of the global economy.The Dow closed down 140 points, or 0.5%, lower. The S&P 500 fell 0.7% and the Nasdaq Composite was down 0.9%.All three major indexes logged their fourth losing week out of the last five. The Dow dropped 4.1% for the week, and the S&P 500 and Nasdaq dropped 5% and 5.5%, respectively...",
            newsImage: "NewsOne",
            newsUrl: "https://edition.cnn.com/2022/09/16/investing/dow-stock-market-today/index.html",
            newsCategory: "Business",
            newsDate: "September 16, 2022",
            newsWriter: "Nicole Goodkind, CNN Business"
        ),
        ...
    ]
  }
```

Haberleri listelemek için Collectionview yapısından yararlandım ve bir row da 2 haber göstermektedir. Bu tasarım dinamik şekilde hesaplanmaktadır. Bu yüzden responsive bir yapıdadır. Her telefonde 2 li haber gösteriliyor. İlgili habere tıklanıldığında habere ait detay sayfasına gitmektedir. Haber detay sayfasına data olarak news struct datasını gönderdim. Detay sayfasında haberin resmini, yazaın adını, kategorisini, yayınlanma tarihini ve haberin kısa bir açıklamasını gösteriyor. Detay sayfasında "Read More" butonu ile 3. sayfaya yönlendiriyor. 3. sayfada iligili habere ait websitesine gidilmektedir. Bunu için de WKWebView yapısını kullandım. Ve detay sayfasından habere ait websitesi url ni aktardım.

İlgili ekran kaydı aşığıda mevcuttur.

https://user-images.githubusercontent.com/36795459/190896965-63f60af7-0713-467b-bd14-d62080c86e90.mp4



