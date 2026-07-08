# Simple Flask App

Aplikacja Dydaktyczna wyświetlająca imię i wiadomość w różnych formatach dla zajęć
o Continuous Integration, Continuous Delivery i Continuous Deployment.

### W projekcie wykorzystamy virtual environment, do utworzenia hermetycznego środowiska aplikacji:

  ```
  # tworzymy hermetyczne środowisko dla bibliotek aplikacji:
  $ python -m venv .venv
  ```
  - Aktywacja środowiska dla systemu Windows
  ```
  $ (Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned) ;  # Uwaga! Na windowsie musimy nadać procesowi uprawnienia do wykonywania skryptów
  .venv/Scripts/activate
  ```

  - Aktywacja środowiska dla systemu Linux
  ```
  source venv/bin/activate
  ```

  Instalacja bibliotek
  ```
  $ pip install -r requirements.txt
  $ pip install -r test_requirements.txt

  # zobacz zainstalowane biblioteki
  $ pip list
  ```

  Sprawdź: [tutorial venv](https://docs.python.org/3/tutorial/venv.html) oraz [biblioteki flask](http://flask.pocoo.org).

- Uruchamianie applikacji:

  ```
  # jako zwykły program
  $ python main.py

  # albo:
  $env:PYTHONPATH="." 
  $env:FLASK_APP="hello_world"
  flask run
  ```

- Uruchamianie testów (see: http://doc.pytest.org/en/latest/capture.html) dla systemu Windows:

  ```
  $env:PYTHONPATH="."
  py.test
  $env:PYTHONPATH="."
  py.test --verbose -s
  ```

- Uruchamianie testów (see: http://doc.pytest.org/en/latest/capture.html) dla systemu Linux:

  ```
  PYTHONPATH=. py.test
  PYTHONPATH=. py.test --verbose -s
  ```

- Kontynuując pracę z projektem, deaktywacja hermetycznego środowiska dla aplikacji py:

  ```
  deactivate
  ```

- Integracja z CircleCI:
  - Projekt jest podpięty pod system CircleCI. Po każdym pushu wykonywane są testy oraz sprawdzana jest poprawność kodu.
  - Po tym następuje zbudowanie oraz pushnięcie obrazu do DockerHub
  

# Pomocnicze

## Windows

- Instalacja dockera: [docker howto](https://docs.docker.com/desktop/setup/install/windows-install/)
- Instalacja `chocolatey`: [chocohowto](https://chocolatey.org/install)
    - Aby zainstalować `makefile` na systemie `Windows` używamy narzędzia `chocolatey` - instalujemy komendą `choco install make` wywołaną przez PowerShell w trybie administratora.

## Ubuntu

- Instalacja dockera: [dockerce howto](https://docs.docker.com/install/linux/docker-ce/ubuntu/)