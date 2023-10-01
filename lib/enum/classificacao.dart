enum Classificacao {
  magrezaGrave,
  magrezaModerada,
  magrezaLeve,
  saudavel,
  sobrepeso,
  obesidadeGrauI,
  obesidadeGrauII,
  obesidadeGrauIII
}

String enumToString(Classificacao enumValue) {
  String enumString = enumValue.toString().split('.').last;

  List<String> words = [];
  String currentWord = '';

  for (int i = 0; i < enumString.length; i++) {
    String char = enumString[i];

    if (i == 0) {
      currentWord += char.toUpperCase();
    } else if (char == char.toUpperCase()) {
      words.add(currentWord);
      currentWord = char;
    } else {
      currentWord += char;
    }
  }

  words.add(currentWord);

  List<String> mergedWords = [];
  String currentMergedWord = '';

  for (int i = 0; i < words.length; i++) {
    String word = words[i];
    if (word == 'I' || word == 'II' || word == 'III') {
      currentMergedWord += word;
    } else {
      if (currentMergedWord.isNotEmpty) {
        mergedWords.add(currentMergedWord);
        currentMergedWord = '';
      }
      mergedWords.add(word);
    }
  }

  if (currentMergedWord.isNotEmpty) {
    mergedWords.add(currentMergedWord);
  }

  return mergedWords.join(' ');
}
