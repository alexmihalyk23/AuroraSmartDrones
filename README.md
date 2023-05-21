# Приложение для ОС Аврора

тестовое приложение для работы с ПО SmartDrones для ОС Аврора

The source code of the project is provided under
[the license](LICENSE.BSD-3-CLAUSE.md),
that allows it to be used in third-party applications.

## Project Structure

The project has a common structure
of an application based on C++ and QML for Aurora OS.

* **[ru.StartUpTV.SmartDrones.pro](ru.StartUpTV.SmartDrones.pro)** file
  describes the project structure for the qmake build system.
* **[icons](icons)** directory contains application icons for different screen resolutions.
* **[qml](qml)** directory contains the QML source code and the UI resources.
  * **[cover](qml/cover)** directory contains the application cover implementations.
  * **[icons](qml/icons)** directory contains the custom UI icons.
  * **[pages](qml/pages)** directory contains the application pages.
  * **[SmartDrones.qml](qml/SmartDrones.qml)** file
    provides the application window implementation.
* **[rpm](rpm)** directory contains the rpm-package build settings.
  **[ru.StartUpTV.SmartDrones.spec](rpm/ru.StartUpTV.SmartDrones.spec)** file is used by rpmbuild tool.
  It is generated from **[ru.StartUpTV.SmartDrones.yaml](rpm/ru.StartUpTV.SmartDrones.yaml)** file.
* **[src](src)** directory contains the C++ source code.
  * **[main.cpp](src/main.cpp)** file is the application entry point.
* **[translations](translations)** directory contains the UI translation files.
* **[ru.StartUpTV.SmartDrones.desktop](ru.StartUpTV.SmartDrones.desktop)** file
  defines the display and parameters for launching the application.# AuroraSmartDrones
