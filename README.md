# Rename-FilesByDate

Skrypt zmienia nazwy plików w podanym katalogu na format oparty o datę modyfikacji.

## Co robi polecenie

Dla każdego pliku w folderze:
- pobiera datę ostatniej modyfikacji (`LastWriteTime`) w formacie `yyyy.MM.dd`,
- buduje nazwę: `yyyy.MM.dd NazwaFolderu` + opcjonalny licznik ` (1)`, ` (2)` itd.,
- zachowuje oryginalne rozszerzenie pliku,
- wykonuje zmianę nazwy przez `Rename-Item`.

Przykład docelowej nazwy:
- `2026.06.07 Zdjecia.jpg`
- `2026.06.07 Zdjecia (1).jpg`

## Użycie (dot-sourcing)

Najpierw zaladuj skrypt do bieżącej sesji PowerShell przez:

```powershell
. .\load-rename.ps1
```

**kropka spacja** (dot-sourcing), dzięki czemu funkcja trafia do bieżącej sesji.

Następnie uruchom polecenie:

```powershell
Rename-FilesByDate -Folder "D:\Sciezka\Do\Folderu"
```

## Wymagania

- PowerShell 5.1+ lub PowerShell 7+
- Uprawnienia do zmiany nazw plików w wybranym folderze

## Uwagi

- Skrypt przetwarza tylko pliki (bez podfolderów).
- Nazwy są budowane na podstawie daty modyfikacji, nie daty utworzenia.
