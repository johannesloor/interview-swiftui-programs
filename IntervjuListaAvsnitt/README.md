# Sveriges Radio Programlista - iOS Intervjuprojekt

I denna uppgift ska du skapa en enkel iOS-app som hämtar program från Sveriges Radios öppna API och visar dem i en lista. Du kommer att implementera nätverksfunktionalitet för att hämta data och bygga ett användargränssnitt med SwiftUI.

## Uppgiftsöversikt

Målet med projektet är att:
1. Hämta en lista med program från Sveriges Radios API.
2. Visa programmen i en enkel lista med SwiftUI.
3. Bygga funktionalitet som hanterar både synkrona och asynkrona datainhämtningar.

### API Information

Sveriges Radio tillhandahåller ett öppet API som du kommer att använda för att hämta alla program.

- API-endpoint för alla program:  
  `https://api.sr.se/api/v2/programs?format=json&pagination=false`

### Funktionella krav

1. **Hämta Program**: Implementera en eller flera av följande metoder i `APIClient`-strukturen för att hämta listan av program:
    - Använd Combine (`getAllPrograms() -> AnyPublisher<Result<[Program], Error>, Never>`)
    - Använd en completion handler (`getAllPrograms(completion: (Result<[Program], Error>) -> Void)`)
    - Använd Swift Concurrency (`getAllPrograms() async throws -> [Program]`)

2. **Visa Program i en Lista**: 
    - Bygg ett enkelt användargränssnitt i SwiftUI som visar alla hämtade program i en lista.
    - Varje listobjekt ska visa:
        - Programnamn
        - Programbeskrivning
        - Programbild (om tillgänglig)

### Bonuskrav

- Visa en laddningsindikator medan data hämtas.
- Hantera fel på ett användarvänligt sätt (t.ex. genom att visa ett felmeddelande för användaren).
  
## Projektstruktur

- **APIClient.swift**: Denna fil innehåller `APIClient`-strukturen där du kommer att implementera nätverksanropet för att hämta programmen.
  
- **ContentView.swift**: Denna fil innehåller `AllProgramsScreen` där du ska lista programmen i en SwiftUI-vy.

- **ProgramRow.swift**: En enkel SwiftUI-vy som representerar en rad för varje program i listan. Den visar programmets namn, beskrivning och bild.

## Hur du bygger projektet

1. **Ladda ner projektet**: Klona detta repo eller ladda ner det som en zip-fil.
2. **Öppna projektet**: Öppna `.xcodeproj`-filen i Xcode.
3. **Installera nödvändiga paket**: Om några externa paket behövs kan du installera dem genom Swift Package Manager (SPM).
4. **Kör projektet**: Välj en simulator och tryck på "Run" i Xcode för att starta appen.

---

Lycka till med projektet!
