# Automation-Python-and-Robot-Framework

Quality Guardian Mentorship PRO Robot + Python + Selenium module repository offered by Lumestack. This project utilize Robot + Python + Selenium to automate Login Feature of [Swag Labs](https://www.saucedemo.com/). Robot Framework is a versatile automation framework that allows developers to write readable and reusable test cases for end-to-end testing across different browsers and platforms.

## Setup

- To run the automated test suite you must have the following tools installed:

  - [Google Chrome](https://www.google.com/intl/pt-BR/chrome/)
  - [Git](https://git-scm.com/downloads)
  - [Python](https://www.python.org/downloads/)

1. Clone this repository using a terminal with the following command:

   ```bash
   git clone https://github.com/s4imu/Automation-Python-and-Robot-Framework.git
   ```

2. Access the repository with the following command:
   ```bash
   cd Automation-Python-and-Robot-Framework/
   ```
3. Create the virtual environment for tests using python with the following command:

   ```bash
   python -m venv venv
   ```

4. Active virtual environment with the following command:
   ```bash
   source venv\Scripts\activate
   ```
5. Install dependencies:

   ```bash
   pip install robotframework && pip install --upgrade robotframework-seleniumlibrary && pip install webdriver-manager
   ```

6. Run the test suite

   ```bash
   robot test/login_steps.robot
   ```
