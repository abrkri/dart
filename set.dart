void main() {

    Set <String> week = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
    
    // 1.
    print("1.");
    print(week);
    print(week.first);
    print(week.last);
    print(week.isEmpty);
    print(week.length);
    print(week.contains("Szerda"));
    print(week.contains("Wednesday"));

    // 2.

    print("\n2.");
    week.addAll(["workday", "weekend", "holiday", "public holiday", "bank holiday", "national holiday", "religious holiday", "federal holiday", "school holiday", "company holiday", "floating holiday", "seasonal holiday", "observed holiday", "half-day", "flexible day", "personal day", "sick day", "leave of absence", "vacation day", "remote workday"]);


    // 3.
    print("\n3.");
    for (String d in week) {
        print(d);
    }

    // 4.
    print("\n4.");

    Set <String> schoolDays = {"workday", "weekend", "holiday", "school holiday", "seasonal holiday", "half-day", "sick day", "leave of absence"};

    print(schoolDays);
    print("week: ${week.length}\t schoolDays: ${schoolDays.length}");
    print(week.difference(schoolDays));
    indexCucc(week);
    indexCucc(schoolDays);
    
}

void indexCucc (Set <String> setamikell) {
    List<int> indexek = [2, 3, 7, 11, 13];

    for (int i = 0; i < setamikell.length; i ++) {
        if (indexek.contains(i)) {
            print("${i}: ${setamikell.elementAt(i)}");
        }
    }
}
