# Simple Flask App

Aplikacja Dydaktyczna wyświetlająca imię i wiadomość w różnych formatach dla zajęć
o Continuous Integration, Continuous Delivery i Continuous Deployment.

- W projekcie wykorzystamy virtual environment, dla utworzenia hermetycznego środowisko dla aplikacji:

  ```
  # tworzymy hermetyczne środowisko dla bibliotek aplikacji:
  $ python -m venv .venv
  
  # Uwaga! Na windowsie musimy nadać procesowi uprawnienia do wykonywania skryptów, dla bezpieczeństwa zakres to będzie obecny proces

  # aktywowanie hermetycznego środowiska na systemie Windows
  $ (Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned) ; .\.venv\Scripts\Activate.ps1 # przykład potrzeby nadania uprawnień
  $ pip install -r requirements.txt
  $ pip install -r test_requirements.txt

  # zobacz
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

- Kontynuując pracę z projektem, aktywowanie hermetycznego środowiska dla aplikacji py:

  ```
  # deaktywacja
  $ deactivate
  ```

- Aktywacja dla systemu Windows
  ```
  $ (Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned) ; 
  .venv/Scripts/activate
  ```

- Aktywacja dla systemu Linux
  ```
  source venv/bin/activate
  ```

- Integracja z TravisCI:

  ```
  # miejsce na twoje notatki
  ```

# Pomocnicze

## Windows

- Instalacja dockera: [docker howto](https://docs.docker.com/desktop/setup/install/windows-install/)
- Instalacja `chocolatey`: [chocohowto](https://chocolatey.org/install)
    - Aby zainstalować `makefile` na systemie `Windows` używamy narzędzia `chocolatey` - instalujemy komendą `choco install make` wywołaną przez PowerShell w trybie administratora.

## Ubuntu

- Instalacja dockera: [dockerce howto](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

## Centos

- Instalacja docker-a:

  ```
  $ yum remove docker \
        docker-common \
        container-selinux \
        docker-selinux \
        docker-engine

  $ yum install -y yum-utils

  $ yum-config-manager \
      --add-repo \
      https://download.docker.com/linux/centos/docker-ce.repo

  $ yum makecache fast
  $ yum install -y docker-ce
  $ systemctl start docker
  ```
