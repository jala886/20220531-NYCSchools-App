//
//  SchoolRowView.swift
//  20220531-jian&li-NYCSchools
//
//  Created by jianli on 5/31/22.
//

import SwiftUI

struct SchoolRowView: View {
    var school:SchoolModel
    var body: some View {
        VStack{
            HStack{
                Text("Name: ").bold()
                Text(school.name).font(.title3).lineLimit(1)
                Spacer()
            }
            HStack{
                VStack{
                    Text("Addr: ").bold()
                    Spacer()
                }
                Text("\(school.location)")
                Spacer()
            }
            HStack{
                Text("Tel: ").bold()
                Text(school.phone)
                Spacer()
            }
            Spacer()
        }
    }
}


