import Vapor


// Define Dish Object
final class Dish :Content {

    var title :String
    var description : String
    var course :String
    var price :Double

    init(title:String, description:String, course:String, price:Double) {

        self.title = title
        self.description = description
        self.course = course
        self.price = price

    }
}



/// Register your application's routes here.
public func routes(_ router: Router) throws {

    router.get("dish") { req -> Dish in

        let dish = Dish(title: "Meat balls", description: "This is description of meat ball dish", course: "Entrees", price: 8.50)

        return dish
    }

}
