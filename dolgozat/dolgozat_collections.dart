void main() {
    print("Sum Arrays ([1.0, 6.7, 13.0, 8.8, 4.20]): \n\t" + sum([1.0, 6.7, 13.0, 8.8, 4.20]).toString() + "\n");
    print("Sum Arrays ([]): \n\t" + sum([]).toString() + "\n");
    print("Odd Ones Out ([ 4, 2, 4, 2, 4, 3 ]): \n\t" + oddOnesOut([4, 2, 4, 2, 4, 3]).toString() + "\n");
    print("Flatten and Sort ([ [1, 2, 3], [4, 5] ]): \n\t" + flattenAndSort([[1, 2, 3], [4, 5]]).toString() + "\n");
    print("Counting Duplicates (abcde): \n\t" + duplicateCount("abcde").toString() + "\n");
    print("Counting Duplicates (aabbcde): \n\t" + duplicateCount("aabbcde").toString() + "\n");
    print("Counting Duplicates (aA11): \n\t" + duplicateCount("aA11").toString());
}

// 1.
num sum(List<num> arr) {
    num sum = 0;
    arr.forEach((x) => sum += x);
    
    return sum;
}

// 2.
List<int> oddOnesOut(List<int> arr) {
    List<int> evenOnes = [];
    Map <int, int> counts = {};
    arr.forEach((x) {
        if (counts.containsKey(x)) counts[x] = counts[x]! + 1;
        else counts[x] = 1;
    });
    arr.forEach((x) {
        if (counts[x]! % 2 == 0) evenOnes.add(x);
    });

    return evenOnes;
}

// 3.
List<int> flattenAndSort(List<List<int>> arr) {
    List<int> flat = [];
    arr.forEach((x) => flat.addAll(x));
    flat.sort();

    return flat;
}

// 4.
int duplicateCount(String text){
    Map <String, int> counts = {};
    text.toLowerCase().split('').forEach((x) {
        if (counts.containsKey (x)) counts[x] = counts[x]! + 1;
        else counts[x] = 1;
    });

    if (counts.values.where((x) => x > 1).isEmpty) return 0;
    else return counts.values.where((x) => x > 1).length;
}
