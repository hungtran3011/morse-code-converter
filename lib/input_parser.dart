import 'package:morse_code_converter/morse_tree.dart';

var morseDictionary = {
    "A": ".-",
    "B": "-...",
    "C": "-.-.",
    "D": "-..",
    "E": ".",
    "F": "..-.",
    "G": "--.",
    "H": "....",
    "I": "..",
    "J": ".---",
    "K": "-.-",
    "L": ".-..",
    "M": "--",
    "N": "-.",
    "O": "---",
    "P": ".--.",
    "Q": "--.-",
    "R": ".-.",
    "S": "...",
    "T": "-",
    "U": "..-",
    "V": "...-",
    "W": ".--",
    "X": "-..-",
    "Y": "-.--",
    "Z": "--..",
    "1": ".----",
    "2": "..---",
    "3": "...--",
    "4": "....-",
    "5": ".....",
    "6": "-....",
    "7": "--...",
    "8": "---..",
    "9": "----.",
    "0": "-----",
    ".": ".-.-.-",
    ",": "--..--",
    "?": "..--..",
    "'": ".----.",
    "!": "-.-.--",
    "/": "-..-.",
    "(": "-.--.",
    ")": "-.--.-",
    "&": ".-...",
    ":": "---...",
    ";": "-.-.-.",
    "=": "-...-",
    "+": ".-.-.",
    "-": "-....-",
    "_": "..--.-",
    "\"": ".-..-.",
    "\$": "...-..-",
    "@": ".--.-.",
    " ": "/",
};

String parseNaturalText(String text){
    String result = "";
    text = text.toUpperCase();
    if (text.isEmpty) {
        throw ArgumentError("Input text must not be empty");
    }
    final textLength = text.length;
    for (int i = 0; i < textLength; i++){
        var char = text[i];
        if (char == " "){
            result += "/ ";
            continue;
        }
        if (morseDictionary.containsKey(char)){
            result += "${morseDictionary[char]} ";
        } else {
            throw ArgumentError("Invalid character: $char");
        }
    }
    return result;
}

/// Parsing the Morse code text to English text
/// Allowed characters: 
/// - Dots (.) for short signal
/// - Dash (-) and underscore (_), not hyphen, for long signal
/// - Slash (/) and backslash (\) or space for break
void parseMorseText(String text){
    var morseTree = MorseTree();
    morseTree.getText(text);
}