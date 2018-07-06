import UIKit

class Student {
    
}

class Teacher {
    
}

class Person<T> {
    var key: T?
    var next: Person<T>?
}

var studentNode = Person<Student>()
var teacherNode = Person<Teacher>()

studentNode.key = nil
studentNode.next = nil

teacherNode.key = nil
teacherNode.next = nil

