//
//  DetailView.swift
//  20220531-jian&li-NYCSchools
//
//  Created by jianli on 5/31/22.
//

import SwiftUI

struct DetailSchoolView: View {
    var school:SchoolModel
    let schoolSAT:SchoolSATModel?
    var body: some View {
        VStack{
            HStack(alignment: .center){
                Text(school.name).bold().font(.title)
            }
            if let schoolSAT = schoolSAT {
                VStack{
                    HStack(alignment: .top){
                        Text("School Name: ").bold()
                        Text(school.name)
                    }
                    HStack(alignment: .top){
                        Text("Number of SAT Test takers: ").bold()
                        Text(schoolSAT.numOfSAT)
                    }
                    HStack(alignment: .top){
                        Text("Reading Avg Score: ").bold()
                        Text(schoolSAT.readingAvgScore)
                    }
                    HStack(alignment: .top){
                        Text("Math Avg Score: ").bold()
                        Text(schoolSAT.mathAvgScore)
                    }
                    HStack(alignment: .top){
                        Text("Writing Avg Score: ").bold()
                        Text(schoolSAT.writingAvgScore)
                    }
                    // webview
                    if let url = URL(string:"https://" + school.website){
                        WebView.init(url: url).background(.blue)
                    }
                    Spacer()
                }
            }else{
                HStack(alignment: .center){
                    Text("There isn't SAT Infomation for this school!").foregroundColor(.red)
                }
            }

        }
    }
}
