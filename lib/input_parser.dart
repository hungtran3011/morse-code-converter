import 'package:dart_application_1/morse_tree.dart';

String parseNaturalText(String text){
    String? result = "";
    text = text.toUpperCase();
    if (text.isEmpty) {
        throw ArgumentError("Input text must not be empty");
    }
    final textLength = text.length;
    for (int i = 0; i < textLength; i++){
        final tmpChar = text[i];

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