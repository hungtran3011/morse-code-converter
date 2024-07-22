import 'package:morse_code_converter/input_parser.dart';
import 'dart:io';

void main(List<String> arguments) {
    print("Welcome to Morse Code Converter!");
    print("--------------------------------");
    print("Choose your option:");
    print("1. Text to Morse Code");
    print("2. Morse Code to Text");
    print("3. Exit");
    stdout.write("Your choice: ");
    var choice = int.parse(stdin.readLineSync()!);
    if (choice == 1){
        stdout.write("Enter the text: ");
        var text = stdin.readLineSync()!;
        try {
            var result = parseNaturalText(text);
            print("Morse Code: $result");
        } catch (e){
            print(e);
        }
    } else if (choice == 2){
        stdout.write("Enter the Morse code: ");
        var morse = stdin.readLineSync()!;
        try {
            parseMorseText(morse);
        } catch (e){
            print(e);
        }
    } else if (choice == 3){
        print("Thank you for using Morse Code Converter!");
    } else {
        print("Invalid choice");
    }
}
