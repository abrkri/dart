void main() {
print('-' * 30);
print('Volume of a Cuboid');
print(getVolumeOfCuboid(1, 2, 2) == 4);
print(getVolumeOfCuboid(6.3, 2, 5) == 63);

print('-' * 30);
print('Rock Paper Scissors!');
print(rps('rock', 'scissors') == "Player 1 won!");
print(rps('scissors', 'paper') == "Player 1 won!");
print(rps('paper', 'rock') == "Player 1 won!");

print('-' * 30);
print('Grasshopper - Check for factor');
print(checkForFactor(2450, 5) == true);
print(checkForFactor(24612, 3) == true);
print(checkForFactor(9, 2) == false);
print(checkForFactor(653, 7) == false);
print(checkForFactor(2453, 5) == false);
print(checkForFactor(24617, 3) == false);

print('-' * 30);
print('Count of positives / sum of negatives');
print(countPositivesSumNegatives([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]).join(', ') == '10, -65');
print(countPositivesSumNegatives([0, 2, 3, 0, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14]).join(', ') == '8, -50');
print(countPositivesSumNegatives([0]).join(', ') == '0, 0');

print('-' * 30);
print('Get the mean of an array');
print(getAverage([2, 2, 2, 2]) == 2);
print(getAverage([1, 2, 3, 4, 5]) == 3);
print(getAverage([1, 1, 1, 1, 1, 1, 1, 2]) == 1);}

double getVolumeOfCuboid(double length, double width, double height) {
    if (length <= 0 || width <= 0 || height <= 0) {
        print("All numbers must be positive.");
        return 0;
    }
    return length * width * height;
}

String rps(String p1, String p2) {
    if (p1 == null || p2 == null) {
        print("Invalid input: p1 and p2 cannot be empty.");
        return "Invalid input";
    }
    if (p1 == p2) return "Draw!";
    if ((p1 == "rock" && p2 == "scissors") || (p1 == "scissors" && p2 == "paper") || (p1 == "paper" && p2 == "rock")) {
        return "Player 1 won!";
    } else {
        return "Player 2 won!";
    }
}

bool checkForFactor(int base, int factor) {
    if (factor == 0) {
        print("Cannot divide with zero.");
        return false;
    }
    return base % factor == 0;
}

List<int> countPositivesSumNegatives(List<int>? input) {
    if (input == null) return [0, 0];
    int pos = 0;
    int neg = 0;
    for (int i = 0; i < input.length; i++) {
        if (input[i] > 0) {
            pos++;
        } else if (input[i] < 0) {
            neg += input[i];
        }
    }
    return [pos, neg];
}

int getAverage(List<int> arr) {
    if (arr.isEmpty) return 0;
    int sum = arr.reduce((a, b) => a + b);
    return sum ~/ arr.length;
}