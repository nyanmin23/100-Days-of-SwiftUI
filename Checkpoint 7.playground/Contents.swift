import UIKit

//  Make a class hierarchy for animals, starting
//      - Animal at the top, then Dog and Cat as subclasses,
//      - then Corgi and Poodle as subclasses of Dog, and Persian and Lion as subclasses of Cat.

//  But there’s more:
//      - The Animal class should have a legs integer property that tracks how many legs the animal has.
//      - The Dog class should have a speak() method that
//        a generic dog barking string, but each of the subclasses should print something slightly different.
//
//  The Cat class should have a matching speak() method, again with each subclass printing something different.
//  The Cat class should have an isTames Boolean property, provided using an initializer.

class Animal {
    var numberOfLeg: Int
    
    init(numberOfLeg: Int) {
        self.numberOfLeg = numberOfLeg
    }
}

class Dog: Animal {
    init() {
        super.init(numberOfLeg: 4)
    }
    
    public func speak() {
        print("Woof!")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(numberOfLeg: 4)
    }
    
    public func speak() {
        print("Meow!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Arf!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Yap!")
    }
}

class Persian: Cat {
    override func speak() {
        print("Hiss!") // Or perhaps a gentle "Purr" for a Persian :)
    }
}

class Lion: Cat {
    override func speak() {
        print("Roar!")
    }
}
