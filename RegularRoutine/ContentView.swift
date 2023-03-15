//
//  ContentView.swift
//  RegularRoutine
//
//  Created by Kübra Cennet Yavaşoğlu on 22.02.2023.
//

import SwiftUI

//Create the main content view here

struct ContentView: View {
    var body: some View {
        
        // Add some verticial spacing between inner child view elements vertically on top of each other
        VStack(alignment: .leading, spacing: 24) {
            
            // Creating in this view
            //A header
            Header()
                .padding(.horizontal, 30) // Apply some padding to the horizontal edges of the Header View
            
            //A search bar
            Search()
                .padding(.horizontal, 30)
            //Add a section title text to separate our Content view for the user
            Text("Featured Routine")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.pink)
                .padding(.leading, 30)
            
            
            //A routine card
            
           RoutineCard()
                .padding(.horizontal, 30)
            
            //Ascrolling list of exercise cards
            
            FeaturedExperienceRow()
                .padding(.leading, 30)
            
            // push all the elements to the top of the view by adding a spacer
            Spacer()
        }
        //Giving this view a backround color
        .background(.gray).edgesIgnoringSafeArea(.all)
        
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    struct Header: View {
        var body: some View {
            HStack { //Stack the inner view elements horizontally
                VStack (alignment: .leading) { //Stack elements vertically
                    Text("Good Morning,")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.pink)
                    Text("Paradise")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.pink)
                    
                }
                Spacer() // Creates space between the VStack View above and the Image View below
                Image("female_user")
                    .resizable()
                    .frame(width: 60, height: 60, alignment: .center)
                    .cornerRadius(100) // Will need this for later, when the image is not circular
            }
        }
    }
    
    // Define a search view
    struct Search: View {
        var body: some View {
            HStack {
                Text("Search for Mindfule excercises")
                    .foregroundColor(.gray)
                // Change text color
                    .padding(.leading, 20) // We want this text to be pushed in from the leading edge
                Spacer()
                Image(systemName: "Magnifyingglass") //Image from SFSymbols
                    .font(.title2)
                    .foregroundColor(.pink)
                    .padding(.trailing, 20) //We want this text to be pushed in from the trailing edge
            }
            .frame(height: 54)//Give the search box a height of 54
            .background(.white) // Give the search box a backround color
            .cornerRadius(14) //Give the search box a rounded corner
        }
        
    }
//Define a routine card
struct RoutineCard: View {
    var body: some View{
        HStack {
            Image(systemName: "clock")
                .font(.title)
                .foregroundColor(.white)
                .padding(.leading)
            Text("Morning Routine")
                .foregroundColor(.white)
            Spacer() // Add space view between the views above and the Text View(Start) below
            Text("Start")
                .foregroundColor(.blue)
                .fontWeight(.semibold)
                .padding(.trailing)
        }
        //Lets define the card's shape + color
        .frame(height: 100)
        .background(.pink)
        .cornerRadius(20)
    }
}

struct FeaturedExperienceRow: View {
    var body: some View {
        VStack {
            Text("Featured Exercises")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.pink)
            ScrollView (.horizontal, showsIndicators: false) {
                
                HStack(spacing: 24) {
                    
                    
                    ForEach(0..<5) {_ in
                        ExerciseCard()
                    }
                }
                
            }
            
        }
        
        
    }
}
struct ExerciseCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            //Image with pink backround
            ZStack {
                
                Rectangle()
                    .frame(width: 300, height: 220)
                    .foregroundColor(.pink)
                Image("green")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 120)
                
            }
            //Description text
            Text("Morning Gratitude")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.horizontal, 16)
            Text("Morning my sunshine, look at the sky. İt's so sunny and lovely.")
                .font(.subheadline)
                .lineLimit(3)
                .padding(.top, 4)
                .padding(.horizontal, 16)
                .foregroundColor(.gray)
            
            Spacer()
        }
        .frame(width: 300, height: 340)
        .background(Color.white)
        .cornerRadius(30)
    }
}

