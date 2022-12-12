package kotlin_lang

class Person {
    var name: String = ""
    var gender: String = ""
    var age: Int = 0
}

fun main() {
    val person = Person()
    person.name = "Jobs"
    person.gender = "male"
    person.age = 20

    println(person.name)
    println(person.gender)
    println(person.age)
}