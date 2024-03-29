//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Mansi Nerkar on 8/14/23.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK - PROPERTIES
    var fruit: Fruit
    //MARK - BODY
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                
                VStack(alignment: .center,spacing: 20){
                    //HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading,spacing: 20){
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        //HEADLING
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        
                        //NUTRINTS
                        FruitNutrientsView(fruit: fruit)
                        
                        //SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //LINK
                        SourceLinkView()
                            .padding(.top,40)
                            .padding(.bottom,40)
                        
                    }//:vstack
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640,alignment: .center)
                }//:VSTACK
                
                .navigationBarTitle(fruit.title,displayMode: .inline)
                .navigationBarHidden(true)
                
            }//: SCROLL
            .edgesIgnoringSafeArea(.top)
            
        }//: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


//MARK - PREVIEW

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: FruitsData[0])
    }
}
 
