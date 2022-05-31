//
//  ContentView.swift
//  20220531-jian&li-NYCSchools
//
//  Created by jianli on 5/31/22.
//

import SwiftUI

struct SchoolListView: View {
    @ObservedObject var schoolVM = SchoolListViewModel()
    var body: some View {
        NavigationView{
            List{
                HStack{
                    Spacer()
                Text("NYC High Schools").bold().font(.title2)
                    Spacer()
                }
                ForEach(schoolVM.schools){ school in
                    NavigationLink(destination: DetailSchoolView(school:school,schoolSAT:schoolVM.getSchoolSAT(id:school.id))){ SchoolRowView(school: school)}
                    //SchoolRowView(school: school)
                }
            }
            
        }
    }
}

struct SchoolListView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolListView()
    }
}
