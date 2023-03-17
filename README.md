A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.


## Command Add Global

```
 mason add -g [brick_name] --git-url https://github.com/rnaufal32/flutter-cli-aku --git-path bricks/[brick_name]
```
List bricks
- riverpod_init
- new_page
- new_model
- new_repository
- new_usecase

## Command List

1. Buat Model
```
mason make new_model
Nama fitur nya apa ? [string]
Nama model nya apa ? [string]
Mau pake Equatable ? [bool]
```

2. Buat Repository
```
mason make new_repository
Nama fitur nya apa ? [string]
Nama model nya apa ? [string]
Mau pake Equatable ? [bool]
```

3. Buat Initialisasi Projek
```
mason make riverpod_init
```

4. Buat Page dan Provider
```
mason make new_page
```
