void main() {

    // 1.
    Map <String, List<String>> weekMap = {
        "Monday": ["workday", "remote workday", "national holiday"],
        "Tuesday": ["workday", "remote workday", "national holiday"],
        "Wednesday": ["workday", "remote workday", "national holiday"],
        "Thursday": ["workday", "remote workday", "national holiday"],
        "Friday": ["workday", "remote workday", "national holiday"],
        "Saturday": ["weekend", "holiday", "public holiday", "bank holiday"],
        "Sunday": ["weekend", "holiday", "public holiday", "bank holiday"]
    };

    // 2.
    print(weekMap.keys.toList());
    weekMap.forEach((key, value) {
        print("$value - ${value.length}");
    });

    // 3.
    weekMap["Wednesday"] =  ["workday", "remote workday", "national holiday"];
    weekMap["Saturday"] = [];

    // 4.
    weekMap.removeWhere((key, value) => value.isEmpty);

    // 5.
    weekMap.forEach((key, value) {
            print("$key - $value");
        });
}