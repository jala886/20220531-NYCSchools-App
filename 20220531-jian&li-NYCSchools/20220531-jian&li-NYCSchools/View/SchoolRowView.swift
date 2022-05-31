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
                Text(school.name).font(.title3)
                Spacer()
            }
            HStack{
                Text("Addr: ").bold()
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


