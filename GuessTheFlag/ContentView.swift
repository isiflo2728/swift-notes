//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Isidoro Flores on 4/20/26.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "US"].shuffled()
   @State private var correctAnswer = Int.random(in: 0...2)

    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    @State private var tappedFlag = ""
    @State private var numQuestions = 0
    @State private var isGameOver = false

    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)
                Spacer()
                Spacer()
                Text("Score: \(score)")
                    .font(.title.bold())
                    .foregroundStyle(.white)
                Spacer()

                VStack(spacing: 15) {
                    VStack{
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 20)
                    .background(.regularMaterial)
                    .clipShape(.rect(cornerRadius: 20))

                    ForEach(0..<3){ number in
                        Button{
                            //Flag was tapped
                            flagTapped(number)


                        } label: {
                            Image(countries[number].lowercased())
                                .clipShape(.capsule)
                                .shadow(radius: 5)
                        }

                    }

                }
                .padding()
            }
        }
        .alert(scoreTitle, isPresented: $showingScore){
            Button("Continue", action: askQuestion)
        } message: {
           if scoreTitle == "Correct"{
                Text("Your score is \(score)")
            }
            else {
                Text("Wrong you chose: \(tappedFlag)")
            }
        }
        .alert("Game over", isPresented: $isGameOver){
            Button("Reset", role: .destructive){
                resetGame()
            }
        }message: {
            Text("Your score is \(score) out of 8")
        }
    }
    func flagTapped(_ number: Int){
        tappedFlag = countries[number]
        if number == correctAnswer{
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong"
        }
        numQuestions += 1


        if numQuestions == 8{
            isGameOver = true
        }else{
            showingScore.toggle()
        }

    }
    func askQuestion(){

        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    func resetGame() {
        score = 0
        numQuestions = 0
        askQuestion()
    }
}

#Preview {
    ContentView()
}

/// Notes /////////////
///
     /* VStack(alignment:  .leading){

Text("Hello, world!")
Text("This is another text view")
// uses remaining space and pushes content to max boundry


// the three spacers divind the screen into two thirds
}

HStack(spacing : 20){
Text("Hey what is up")
Text("Hey what is up")

}
//makes views overlapp if they were tect viewes like well see theyll make it hard to read
//no spacing between viewes but does have allignment
ZStack(alignment: .top){
Text("Hey what is up")
Text("this is inside a stack")
}
*/

/// Simple 3x3 grid brute force
/*VStack{
    HStack{
        Text("1")
        Text("2")
        Text("3")
    }
    HStack{
        Text("4")
        Text("5")
        Text("6")
    }
    HStack{
        Text("7")
        Text("8")
        Text("9")
    }
}
*/

/// Color.blueu takes up entire space, we can modify this with the .fram modifier
/*ZStack {
    Color.blue // this is how ot modify the whole zstaack it is a view itself as well
    // we can modify where we want our color
       // .frame(width: 200, height: 200)
    Text("Your Content")

}
.ignoresSafeArea()
*/


/// note that the text also allows light to go through this is called vibrancy
/*ZStack {
    VStack(spacing: 0){
        Color.red
        Color.blue
    }
    Text("Your content here")
        .foregroundStyle(.secondary)
        .padding(50)
        .background(.ultraThinMaterial)
}
.ignoresSafeArea()
*/

/// **Gradients Notes**

/// Gradients are an array of colors, size and direction, and type
///
/// ex LinearGradient(colors: [.white, .black], startPoint:  .top, endpoint: .bottom)
/// These let us control how far the color should go
/*LinearGradient(stops: [
Gradient.Stop(color: .white, location: 0.45),
Gradient.Stop(color: .black, location: 0.55),
], startPoint: .top, endPoint: .bottom)
*/

// this one creates a sharper gradient at the center

// we can use radial gradients to move outward

/*RadialGradient(colors: [.blue,.black],center: .center, startRadius: 20, endRadius: 200)
*/
/// this vreates a blurred circle with a balack outer


/*VStack(spacing: 0){
AngularGradient(colors:
[.red, .yellow, .green, .blue, .purple, .red], center: .center)
*/

// Swift ui provied a fourth type but doesnt allow customizablility
/*    ZStack {

 Text("Your content here")
     .frame(maxWidth: .infinity, maxHeight: .infinity)
     .foregroundStyle(.white)
     .background(.red.gradient)
}
.ignoresSafeArea()*/


/// ***Buttons and images***
/// syntax
/*
 Button("Some string here"){
    print("Some action here")
 }

 we can pass any funciton within the paramater of the button so this syntax is fine
 Button("Delete selciton", action : executDelete)
 outside of body
 func executeDelete() {
    do something
 }
 we can customize how they look by assigning them roles
 and assign them styles made for buttons like
 .bordered or .borderedProminent

 Button("Delete item",role: .destructive ,action: executeDelete)
     .buttonStyle(.borderedProminent)
 // dont overuse prominent buttons if everything is prominent nothing is

 we can make it even more custom by passing a label and using a second trailing closure
now moving on to images

 swift ui has a dedicated image type to handle images in our app
 here are the three ways u can invoke it

 Image("Pencil")
 Image(decorative: "Pensil")
 Image(systemName: "Pencil")

 we can use label to make a custom button and right here it is like an hstack however label is smart it decieds how to present this info based on where its being shown

 how to show alert

 @State private var showingAlert = false
 Button("Show Alert"){
     showingAlert = true
 }
 .alert("Import message", isPresented: $showingAlert){
     Button("Ok"){}
 }
 // notice the two way binding its because when dismissed value returns to false
 button is empty yet it dismisses it? because any button inside an alert will have that functionaliy closure is there for more functionalty

 VStack {
     Button("Show Alert"){
         showingAlert = true
     }
     .alert("Import message", isPresented: $showingAlert){
         Button("Cancel", role: .cancel){}
         Button("Delete", role: .destructive){}
     } message : {
         Text("Plase read this")
     }
     Button("Button 1"){}
         .buttonStyle(.bordered)
     Button("Button 1", role: .destructive){}
         .buttonStyle(.bordered)
         .tint(.mint)
     Button("Button 3"){}
         .buttonStyle(.borderedProminent)
         .tint(.mint) // lets us cutsomize color
     Button("Button 1", role: .destructive){}
         .buttonStyle(.borderedProminent)
     Button{
         print("Button was tapped")
     }label: {
         Text("Tap me")
         .padding()
         .foregroundStyle(.white)
         .background(.red)
     }
     Button{
         print("was tapped")
     }label: {
         Image(systemName: "pencil")
     }

     // For text and button
     Button("Edit", systemImage: "pencil"){
         print("Edit buton was tapped")
     }
     // or
     Button {
         print("Edit button was tapped")
     } label : {
         Label("Edit", systemImage: "pencil")
             .padding()
             .foregroundStyle(.white)
             .background(.red)
     }
 }
 */
