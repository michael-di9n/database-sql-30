# Swift UI
Everything is a view
1. VStack and HStack to organize UI elements
2. 'Modifiers' wrap elements in a view
3. SwiftUI has a maximum of 10 views on a page - extract view to make a smaller one
4. Add color in assets and symbols using SF symbols

Common Views that will be used all the time:
- Text, Image 

Common modifiers:
- .backgroundColor, .foregroundColor, .front, .frame (width and height)

## Data passing in SwiftUI
1. Passing of data based on state using @State 
   1. Exampole of declarative programming - the UI will react to the change in state
   2. The @State tells Xcode to maintain state even though it destroys and recreates the view
2. @Bindings allows @State to be passed down to children and maintain the same value we pass down $<binding value>
3. If too many depth then use environment

### Additional Creating a data model to change the app 


XCode beta - SwiftUI - Keep up with the documentation also deprecated things will eventually break the code in the future..

1. @Binding is only required if we need write access. Otherwise we can pass down the variable down directly.