[![Language-English-blue](https://img.shields.io/badge/Language-English-blue)](#eng)
[![Language-Polski-red](https://img.shields.io/badge/Language-Polski-red)](#pl)

## ENG

## Rename-FilesByDate
This script renames files in a selected folder using each file's last modification date.

### What the command does

For each file in the folder, it:
- reads `LastWriteTime` and formats it as `yyyy.MM.dd`,
- builds a new name as: `yyyy.MM.dd FolderName` plus optional counter ` (1)`, ` (2)`, etc.,
- keeps the original file extension,
- renames the file with `Rename-Item`.

Example output names:
- `2026.06.07 Photos.jpg`
- `2026.06.07 Photos (1).jpg`

### Usage (dot-sourcing)

First, load the script into the current PowerShell session:

```powershell
. .\load-rename.ps1
```

This is **dot-space** (dot-sourcing), which makes the function available in the current session.

Then run:

```powershell
Rename-FilesByDate -Folder "D:\Path\To\Folder"
```

### Requirements

- PowerShell 5.1+ or PowerShell 7+
- Permissions to rename files in the selected folder

### Notes

- The script processes files only (no subfolders).
- Names are based on modification date, not creation date.

## PL

## Rename-FilesByDate

Skrypt zmienia nazwy plików w podanym katalogu na format oparty o datę modyfikacji.

### Co robi polecenie

Dla każdego pliku w folderze:
- pobiera datę ostatniej modyfikacji (`LastWriteTime`) w formacie `yyyy.MM.dd`,
- buduje nazwę: `yyyy.MM.dd NazwaFolderu` + opcjonalny licznik ` (1)`, ` (2)` itd.,
- zachowuje oryginalne rozszerzenie pliku,
- wykonuje zmianę nazwy przez `Rename-Item`.

Przykład docelowej nazwy:
- `2026.06.07 Zdjecia.jpg`
- `2026.06.07 Zdjecia (1).jpg`

### Użycie (dot-sourcing)

Najpierw załaduj skrypt do bieżącej sesji PowerShell przez:

```powershell
. .\load-rename.ps1
```

To jest **kropka spacja** (dot-sourcing), dzięki czemu funkcja trafia do bieżącej sesji.

Następnie uruchom polecenie:

```powershell
Rename-FilesByDate -Folder "D:\Sciezka\Do\Folderu"
```

### Wymagania

- PowerShell 5.1+ lub PowerShell 7+
- Uprawnienia do zmiany nazw plików w wybranym folderze

### Uwagi

- Skrypt przetwarza tylko pliki (bez podfolderów).
- Nazwy są budowane na podstawie daty modyfikacji, nie daty utworzenia.
