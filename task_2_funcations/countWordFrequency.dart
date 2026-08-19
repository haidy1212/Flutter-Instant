Map<String, int> countWordFrequency(List<String> words) {
  Map<String, int> frequencyMap = {};
  for (var word in words) {
    if (frequencyMap.containsKey(word)) {
      frequencyMap[word] = frequencyMap[word]! + 1;
    } else {
      frequencyMap[word] = 1;
    }
  }
  return frequencyMap;
}
void main() {
  List<String> words = [
    "apple",
    "banana",
    "apple",
    "orange",
    "banana",
    "apple"
  ];
  print("words: $words");
  Map<String, int> result = countWordFrequency(words);
  print("word frequency: $result");
}