# Weather_App

### 프로젝트 개요

WeatherApp은 사용자가 현재 위치의 날씨 정보를 확인하고 좋아하는 도시의 날씨를 저장하고 조회할 수 있는 iOS 애플리케이션입니다. 이 프로젝트는 Swift, SwiftUI, Core Data, CLLocation, URLSession 등을 활용하여 개발되었습니다.

### 프로젝트 후기

이 프로젝트를 통해 SwiftUI와 Core Data를 사용하여 복잡한 데이터 관리와 사용자 인터페이스를 구현하는 방법을 학습했습니다. 특히, 위치 정보를 기반으로 한 실시간 날씨 데이터 제공 기능과 즐겨찾기 도시 관리 기능을 통해 사용자에게 유용한 정보를 제공할 수 있었습니다.

---

### 주요 기능

1. **현재 위치의 날씨 정보 조회**
    - 사용자는 앱을 실행하여 현재 위치의 날씨 정보를 실시간으로 조회할 수 있습니다.
    - OpenWeatherMap API 사용
2. **도시별 날씨 정보 검색 및 저장**
    - 사용자는 원하는 도시의 이름을 입력하여 해당 도시의 날씨 정보를 검색할 수 있으며, 즐겨찾기 목록에 추가할 수 있습니다.
3. **즐겨찾기 도시 관리**
    - 사용자는 즐겨찾기 목록에서 도시를 추가, 삭제할 수 있습니다.

---

### 기술 스택

- **Swift**: iOS 앱 개발을 위한 프로그래밍 언어
- **SwiftUI**: 선언적인 방식으로 사용자 인터페이스를 구축할 수 있는 애플의 UI 프레임워크
- **Core Data**: 데이터 영구 저장 및 관리를 위한 애플의 데이터 관리 프레임워크
- **CLLocation**: 사용자 위치 정보를 가져오기 위한 프레임워크
- **URLSession**: 네트워크 요청을 처리하기 위한 클래스

---

### 구현 과정

WeatherApp 프로젝트는 사용자에게 현재 위치 또는 특정 도시의 날씨 정보를 제공하는 기능을 중심으로 구현되었습니다. 아래는 WeatherApp의 주요 구현 과정을 단계별로 설명한 내용입니다.

**1. 프로젝트 설정 및 초기화**

- **Xcode 프로젝트 생성**: Xcode에서 새로운 프로젝트를 생성하고 SwiftUI를 선택합니다.
- **Core Data 설정**: Core Data를 사용하여 데이터 관리를 구현하기 위해 프로젝트 설정에서 Core Data 옵션을 활성화합니다.

**2. API 키 설정**

- **API 키 획득**: OpenWeatherMap에서 API 키를 발급받습니다.
- **Info.plist에 API 키 추가**: API 키를 `Info.plist` 파일에 추가하여 앱에서 사용할 수 있도록 합니다.

**3. Core Data 모델링**

- **FavoriteCity 엔티티 생성**: 즐겨찾기 도시를 저장할 Core Data 엔티티를 생성합니다.
- **Core Data 클래스 및 속성 정의**: FavoriteCity 클래스와 속성을 정의하여 Core Data에서 사용합니다.

**4. 날씨 데이터 가져오기**

- **WeatherManager 구현**: OpenWeatherMap API를 사용하여 날씨 데이터를 가져오는 WeatherManager 클래스를 구현합니다.

**5. 사용자 위치 관리**

- **LocationManager 구현**: CLLocationManager를 사용하여 사용자의 현재 위치를 가져오는 LocationManager 클래스를 구현합니다.

**6. 즐겨찾기 관리**

- **FavoritesManager 구현**: Core Data를 사용하여 즐겨찾기 도시를 관리하는 FavoritesManager 클래스를 구현합니다.

**7. UI 구성**

- **ContentView 구현**: 사용자의 현재 위치나 특정 도시의 날씨 정보를 보여주는 ContentView를 구현합니다.
- **MainView 및 TabView 구현**: `MainView`에서 `ContentView`와 `FavoritesView`를 `TabView`로 감싸서 화면 간 전환을 구현합니다.

---

### 스크린샷

1.메인 화면

![스크린샷 2024-06-11 오후 11.13.06.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/f9f35de7-0091-4a79-819a-501ef9435828/c5e5325c-f2a9-4d69-b875-0da817e58e7b/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA_2024-06-11_%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE_11.13.06.png)

2.검색 화면

![스크린샷 2024-06-11 오후 11.13.17.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/f9f35de7-0091-4a79-819a-501ef9435828/d773bf8a-61d0-4be8-88b0-2a1e987698c6/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA_2024-06-11_%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE_11.13.17.png)

3.즐겨찾기 화면

![스크린샷 2024-06-11 오후 11.13.26.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/f9f35de7-0091-4a79-819a-501ef9435828/7196379c-78b4-43c5-847a-da464724f0f7/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA_2024-06-11_%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE_11.13.26.png)

---

### 주요 코드 스니펫 및 상세설명

1.WeatherManager.swift

`WeatherManager`는 OpenWeatherMap API를 통해 날씨 데이터를 가져오는 핵심 클래스입니다. 이 클래스는 위치나 도시 이름을 기반으로 날씨 정보를 가져오고, 이를 디코딩하여 `WeatherResponse` 구조체로 반환합니다.

```swift
import Foundation

struct WeatherResponse: Codable {
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let description: String
}

class WeatherManager: ObservableObject {
    private var apiKey: String {
        guard let key = Bundle.main.object(forInfoDictionaryKey: "OpenWeatherMapAPIKey") as? String else {
            fatalError("API key not found in Info.plist")
        }
        return key
    }

    func fetchWeather(lat: Double, lon: Double, completion: @escaping (WeatherResponse?) -> Void) {
        let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=\(lat)&lon=\(lon)&appid=\(apiKey)&units=metric"
        guard let url = URL(string: urlString) else {
            print("Invalid URL: \(urlString)")
            completion(nil)
            return
        }
        print("Fetching weather data from: \(urlString)")

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error fetching weather data: \(error.localizedDescription)")
                completion(nil)
                return
            }
            guard let data = data else {
                print("No data received")
                completion(nil)
                return
            }
            print("Weather data received: \(String(data: data, encoding: .utf8) ?? "No data")")
            do {
                let weatherResponse = try JSONDecoder().decode(WeatherResponse.self, from: data)
                completion(weatherResponse)
            } catch {
                print("Error decoding weather data: \(error.localizedDescription)")
                completion(nil)
            }
        }.resume()
    }

    func fetchWeather(for city: String, completion: @escaping (WeatherResponse?) -> Void) {
        let urlString = "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(apiKey)&units=metric"
        guard let url = URL(string: urlString) else {
            print("Invalid URL: \(urlString)")
            completion(nil)
            return
        }
        print("Fetching weather data for city from: \(urlString)")

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error fetching weather data: \(error.localizedDescription)")
                completion(nil)
                return
            }
            guard let data = data else {
                print("No data received")
                completion(nil)
                return
            }
            print("Weather data received: \(String(data: data, encoding: .utf8) ?? "No data")")
            do {
                let weatherResponse = try JSONDecoder().decode(WeatherResponse.self, from: data)
                completion(weatherResponse)
            } catch {
                print("Error decoding weather data: \(error.localizedDescription)")
                completion(nil)
            }
        }.resume()
    }
}

```

**상세 설명**:

- **WeatherResponse**: 날씨 API 응답을 매핑하기 위한 구조체입니다. `main`과 `weather`라는 두 개의 주요 속성이 있으며, 각각 온도와 날씨 설명을 포함합니다.
- **fetchWeather(lat:lon:completion:)**: 주어진 위도와 경도를 기반으로 날씨 데이터를 가져오는 메서드입니다. URL을 생성하고, URLSession을 통해 비동기 요청을 수행하여 데이터를 받아옵니다. 데이터를 성공적으로 받아오면 이를 디코딩하여 completion 핸들러로 전달합니다.
- **fetchWeather(for:completion:)**: 주어진 도시 이름을 기반으로 날씨 데이터를 가져오는 메서드입니다. 나머지 로직은 위의 `fetchWeather`와 유사합니다.

1. FavoritesManager.swift

`FavoritesManager`는 Core Data를 사용하여 즐겨찾기 도시를 관리하는 클래스입니다. 이 클래스는 즐겨찾기 도시를 추가, 삭제, 조회하는 기능을 제공합니다.

```swift
import Foundation
import CoreData

class FavoritesManager: ObservableObject {
    private let container: NSPersistentContainer
    @Published var favoriteCities: [FavoriteCity] = []

    init() {
        container = NSPersistentContainer(name: "Weather")
        container.loadPersistentStores { _, error in
            if let error = error {
                print("Failed to load Core Data stack: \(error)")
            }
        }
        fetchFavorites()
    }

    func saveFavorite(city: String) {
        let newFavorite = FavoriteCity(context: container.viewContext)
        newFavorite.name = city
        saveContext()
        fetchFavorites()
    }

    func deleteFavorite(city: FavoriteCity) {
        container.viewContext.delete(city)
        saveContext()
        fetchFavorites()
    }

    private func fetchFavorites() {
        let request: NSFetchRequest<FavoriteCity> = FavoriteCity.fetchRequest()
        do {
            favoriteCities = try container.viewContext.fetch(request)
        } catch {
            print("Failed to fetch favorite cities: \(error)")
        }
    }

    private func saveContext() {
        do {
            try container.viewContext.save()
        } catch {
            print("Failed to save context: \(error)")
        }
    }
}

```

**상세 설명**:

- **FavoritesManager**: Core Data를 관리하고 즐겨찾기 도시를 저장 및 삭제하는 클래스입니다.
- **saveFavorite(city:)**: 주어진 도시 이름을 즐겨찾기에 추가하는 메서드입니다. Core Data 컨텍스트에 새로운 `FavoriteCity` 객체를 생성하고 저장합니다.
- **deleteFavorite(city:)**: 주어진 `FavoriteCity` 객체를 Core Data에서 삭제하는 메서드입니다.
- **fetchFavorites()**: 저장된 즐겨찾기 도시 목록을 가져오는 메서드입니다. Core Data에서 `FavoriteCity` 객체를 조회하여 `favoriteCities` 배열에 저장합니다.
- **saveContext()**: Core Data 컨텍스트의 변경 사항을 저장하는 메서드입니다. 에러가 발생하면 이를 출력합니다.
