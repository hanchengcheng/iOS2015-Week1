//: Shopping List - Week 1

import Foundation

//: Create an empty array to store shopping list items
var shoppinglist: [String]


//: Add at least 5 items to the array using 3 different insertion methods
shoppinglist = ["soymilk", "banana"]

shoppinglist.append("ground beef")

shoppinglist = shoppinglist + ["eggs", "pluots"]

shoppinglist






//: Sort your array of items

func sortlist(item1: String, item2: String) -> Bool {
    return item1 < item2
}


// Sort the array.


shoppinglist = shoppinglist.sort(sortlist)



shoppinglist





//: Create a function to print an array, with it's index, with one item per line

for (index, list) in shoppinglist.enumerate() {
    print(index, list)
}


//: Combine the above. Create a function that takes an array, sorts it and prints it with it's index, with one item per line

func shopping(shoppinglist: [String]) {
    var shoppinglist_sort: [String]
    shoppinglist_sort = shoppinglist.sort(sortlist)
    for (index, list) in shoppinglist_sort.enumerate() {
        print(index, list)
    }    
    
}


shopping(["egg","milk","banana"])


var firstChar = Array(arrayLiteral: shoppinglist[0])[0]



//: Create a function that returns a new array containing the first letter of each item, in uppercase. The returned array should be sorted and not have any repeated characters.
func firstletter(shoppinglist: [String]) -> ([Character]){
    
    var fl_shoppinglist: [Character] = []

    var Uppercaseshoppinglist: String
        
    var StartInd: Character
    
    var StartIndbackup: Character = "!"
    
    var shoppinglist_sort: [String]
    shoppinglist_sort = shoppinglist.sort(sortlist)
    
    
    
    for index1 in 0..<shoppinglist_sort.count {
        Uppercaseshoppinglist = shoppinglist_sort[index1].uppercaseString
            
        
        StartInd = Uppercaseshoppinglist[Uppercaseshoppinglist.startIndex]
        
        if(StartInd != StartIndbackup) {
            fl_shoppinglist.append (StartInd)
        }
        
        
        
        
        StartIndbackup = StartInd
    }
    
    

    
    return(fl_shoppinglist)
    

}


shoppinglist = ["pluot", "tofu", "snack", "plum"]

firstletter(shoppinglist)

//: Create a function that searches the items array and returns all items that match the input string. Ignore uppercase/lowercase differences.
func search(shoppinglist: [String], search: String) ->([String]) {
    var match: [String] = []
    
    for item in shoppinglist {
        if (item == search) {
            match.append(item)
        }
    }
    
    return(match)
    
}

















