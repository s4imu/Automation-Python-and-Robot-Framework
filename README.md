# Automation-Python-and-Robot-Framework

## Setup

- Para execução das suítes de testes automatizados é necessário que você tenha as seguintes ferramentas instaladas:

  - [Google Chrome](https://www.google.com/intl/pt-BR/chrome/)
  - [Git](https://git-scm.com/downloads)
  - [Python](https://www.python.org/downloads/)
  - [Postman](https://www.postman.com/downloads/)

1. Clone esse repositório usando um terminal com o seguinte comando:

   ```bash
   git clone https://github.com/s4imu/Automation-Python-and-Robot-Framework.git
   ```

2. Acesse o repositório com o seguinte comando:
   ```bash
   cd Automation-Python-and-Robot-Framework/
   ```
3. Crie o virtual enviroment para os testes que utilizam python com o seguinte comando:

   ```bash
   python -m venv venv
   ```

4. Ative o virtual enviroment com o seguinte comando:
   ```bash
   source venv\Scripts\activate
   ```
5. Instale as dependências

   ```bash
   pip install robotframework && pip install --upgrade robotframework-seleniumlibrary && pip install webdriver-manager
   ```
