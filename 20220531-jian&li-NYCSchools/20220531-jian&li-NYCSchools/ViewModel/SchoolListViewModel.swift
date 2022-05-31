//
//  SchoolListViewModel.swift
//  20220531-jian&li-NYCSchools
//
//  Created by jianli on 5/31/22.
//

import Foundation

class SchoolListViewModel:ObservableObject{
    @Published var schools = [SchoolModel]()
    @Published var sats = [SchoolSATModel]()
    
    convenience init(){
        var data = Data()
        do {
            data = try NetworkManager.downloadListSchoolData()
        }catch(let e){
            print(e.localizedDescription)
        }
        self.init(data:data)
        do {
            let data = try NetworkManager.downloadSATSchoolData()
            self.loadSATData(data: data)
            print("load data success!")
        }catch(let e){
            print(e)
        }
        
    }
    
    init(data:Data){
        do{
            self.schools = try JSONDecoder().decode([SchoolModel].self, from: data)
        }catch(let e){
            print(e)
        }
    }
    
    func loadSATData(data:Data){
        do{
            //let sstr = String(data: data, encoding: .utf8)!;print(sstr)
            self.sats = try JSONDecoder().decode([SchoolSATModel].self, from: data)
        }catch(let e){
            print(e)
        }
    }
    func getSchoolSAT(id:String)->SchoolSATModel?{
        return self.sats.filter{$0.id == id}.first
    }
}
