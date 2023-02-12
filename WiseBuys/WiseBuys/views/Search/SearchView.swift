//
//  SearchView.swift
//  WiseBuys
//
//  Created by Lauren Ferlito on 2/11/23.
//

import SwiftUI

struct SearchView: View {
    
    @State private var search: String = ""
    @Binding var item: String
    @Binding var stayOpen: Bool
    
    
//    var filteredItems: [String] {
//        if search.isEmpty {
//            return products
//        } else {
//            return products.filter{ $0.localizedCaseInsensitiveContains(self.search) }
//        }
//    }
    
    var body: some View {
        NavigationView{
            VStack{
            List([0], id: \.self) { item in
                Text("search for groceries")
//                Spacer()
//                Button(action: {
//                    search = item
//                    stayOpen = false
//                }){
//                    Text(item)
//                        .foregroundColor(.black)
                }
            }
            .searchable(text: $search, prompt: "Item search", suggestions: {
                ForEach(products.filter {
                    $0.localizedCaseInsensitiveContains(self.search) }, id: \.self){ suggestion in
                        Text (suggestion)
                            .foregroundColor(.black)
                            .searchCompletion(suggestion)
                    }
            })
            .onSubmit(of: .search) {
                    item = search
                    stayOpen = false
            }
            .navigationTitle("Search")
            .toolbar {
                Button ("Done") {
                    stayOpen = false
                }
            }
        }
            
    }
}



struct SearchView_Previews: PreviewProvider {
    @State var stayopen = true
    static var previews: some View {
        //NavigationView{
            SearchView(item: .constant("apple"), stayOpen: .constant(true))
      //  }
    }
}

var products = ["Aluminum Foil", "Apple Juice", "Apple Sauce", "Apples, Gala, bag", "Apples, Red/Golden Delicious (and/or other), bag", "Bacon", "Bagles, plain", "Baguette Rolls, frozen", "Baguette/French Bread", "Barbeque Sauce", "Beef Stew Meat", "Beer, bottle, pilsener, import", "Beer, cans", "Brats, 4-6 pack", "Bread Crumbs", "Bread, 12-grain/multi-grain", "Breakfast Sausage, frozen", "Butter, real, unsalted/salted", "Carrots, whole", "Cereal, Mbasli style", "Cheery Pie Filling", "Cheese Singles (imitation)", "Cheese, block (regular)", "Cheese, Boursin", "Cheese, Brie 1", "Cheese, Brie 2", "Cheese, Parmesan, jar", "Cheese, shredded, Mexican style", "Cheese, shredded, Mozarella", "Cheese, sliced, deli", "Cheese, sliced, regular", "Cheese, wedge, deli", "Chicken Breasts, frozen", "Chicken Nuggets, frozen", "Chicken Tenderloins, frozen", "Chips, potato chips", "Chocolate Chip Cookie Dough", "Cocoa Rice Cereal", "Coconut Milk", "Coffee", "Cold Cuts, ham or chicken", "Cold Cuts, turkey variety", "Corn Flakes, regular", "Corn Flakes, sugar frosted", "Cottage Cheese", "Cream Cheese", "Cream, heavy whipping", "Croissants", "Eggs, cage free", "Eggs, regular", "Fish 1, frozen (flounder)", "Fish 2, frozen (tilapia)", "Fish 3, frozen\n(mahi mahi and/or other)", "Flour, all purpose", "Flour, self rising", "French Fries, frozen", "Fruit 1, frozen (strawberries)", "Fruit 2, frozen\n(cherries and/or other)", "Granola Bars, high fiber", "Granola Bars, regular", "Grapes, red", "Green Beans, canned", "Ground Beef (chuck, 80/20)", "Ground Beef (sirloin, 90/10)", "Ground Beef, frozen", "Ground Turkey", "Ground Turkey, frozen", "Ham, boneless", "Honey", "Honey Crunch Oats", "Hot Dog Buns", "Hot Dogs, beef", "Ice Cream, premium", "Ice Cream, simple", "Jalopeo Peppers, canned", "Ketchup", "Kielbasa", "Lemons", "Lettuce, iceberg", "Mandarin Oranges, canned", "Margarine/Spread", "Mayonnaise", "Milk", "Milk Chocolate Bar", "Milk, organic", "Mushrooms, Button, whole", "Mushrooms, stems/pieces", "Mustard, dijon", "Mustard, yellow", "Nutella", "Oat Meal", "Oil, Canola, 100% pure", "Oil, Olive, 100% pure", "Oil, Olive, extra virgin", "Onions, yellow", "Orange Juice, not from concentrate", "Oranges", "Pancetta or Ham, diced", "Paper Towles", "Pasta, Egg Noodles", "Pasta, Ellbow Maccaroni", "Pasta, Penne Rigate", "Pasta, Rotini/Rotelle/Fusilli", "Pasta, Spaghetti", "Peanut Butter", "Peanuts, roasted", "Pears", "Pepper, black, ground", "Pizza Dough", "Pizza, frozen (premium)", "Pizza, frozen (simple)", "Plastic Wrap", "Pork Tenderloin, small", "Potatoes, gold (Yukon)", "Potatoes, red", "Potatoes, Russet", "Preserves, strawberry", "Pretzels", "Red Cabbage", "Ribs, Baby Back (pork, unseasoned)", "Ribs, Spare Back (pork, unseasoned)", "Rice, instant, white", "Rice, regular", "Salad Dressing", "Salami, sliced", "Salami, whole (1)", "Salami, whole (2)", "Salsa, medium", "Salt, iodized", "Soda, bottle", "Soda, bottle (Coke product)", "Soda, can", "Soda, can (Coke product)", "Soup, Chicken Noodle, condensed", "Soup, Chicken Noodle, regular", "Soup, organic", "Soup, Tomato, condensed", "Soup, Tomato, regular", "Sour Cream", "Spaghetti Sauce", "Sugar, brown", "Sugar, powdered", "Sugar, white", "Syrup, breakfast", "Tea, green, bags", "Tomato Paste", "Tomato Sauce", "Tomatoes, slicer", "Tuna, chunky, in water", "Tuna, solid, in water", "Vanilla Extract, pure (not imitation)", "Veggies 1, frozen (peas)", "Veggies 2, frozen (other)", "Waffles, frozen", "Water, regular/drinking", "Water, Sparkling/Mineral", "White Bread/Toast, enriched", "Wine, table, Cabernet", "Wine, table, Chardonnay", "Wine, table, White Zinfandel", "Yoghurt, Dannon (etc.)", "Yogurt, Fage, 2%, plain", "Yogurt, Fage, w/ flavor", "Yogurt, flavored, cup", "Yogurt, greek style, plain", "Yogurt, plain"]
