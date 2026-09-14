import 'dart:io';

void main() {
  String again = "y";

  do {
    print("====================================");
    print("       SMART TEMPERATURE CONVERTER");
    print("====================================");

    print("1. Celsius to Fahrenheit");
    print("2. Fahrenheit to Celsius");
    print("3. Celsius to Kelvin");
    print("4. Kelvin to Celsius");
    print("5. Fahrenheit to Kelvin");
    print("6. Kelvin to Fahrenheit");
    print("7. Exit");

    print("Enter your choice:");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 7) {
      break;
    }

    print("Enter temperature:");
    double temperature = double.parse(stdin.readLineSync()!);

    double result;

    switch (choice) {
      case 1:
      // Celsius to Fahrenheit
        result = (temperature * 9 / 5) + 32;
        print("${temperature}°C = ${result.toStringAsFixed(2)}°F");
        break;

      case 2:
      // Fahrenheit to Celsius
        result = (temperature - 32) * 5 / 9;
        print("${temperature}°F = ${result.toStringAsFixed(2)}°C");
        break;

      case 3:
      // Celsius to Kelvin
        result = temperature + 273.15;
        print("${temperature}°C = ${result.toStringAsFixed(2)} K");
        break;

      case 4:
      // Kelvin to Celsius
        result = temperature - 273.15;
        print("${temperature} K = ${result.toStringAsFixed(2)}°C");
        break;

      case 5:
      // Fahrenheit to Kelvin
        result = (temperature - 32) * 5 / 9 + 273.15;
        print("${temperature}°F = ${result.toStringAsFixed(2)} K");
        break;

      case 6:
      // Kelvin to Fahrenheit
        result = (temperature - 273.15) * 9 / 5 + 32;
        print("${temperature} K = ${result.toStringAsFixed(2)}°F");
        break;

      default:
        print("Invalid choice!");
    }

    print("Do you want to perform another conversion? (y/n):");
    again = stdin.readLineSync()!;

    print("");
  } while (again.toLowerCase() == "y");

  print("====================================");
  print("          Thank You!");
  print("          Program Ended");
  print("====================================");
}
