![Demo Snapshot](https://github.com/jala886/20220531-jian-li-NYCSchools/blob/main/Demo%20Snapshot/)
This is  a demo for a school Informations 


## π Features
```
SwiftUI
WebKit Embed
TDD development
```
### πΌ Overlays
```
Based on MVVM pattern
    * View
        SchoolListView
        DetailSchoolView
            embed the home website of school
            βοΈ(it's slow and need 2-5s to load)
            βοΈToDoβοΈ:
                embed mapkit to show school location
                
    * ViewModel
    * Model
        defined data structur
    * Network
        download data
        βοΈToDoβοΈ:
            used API,
            parse HTML by SwiftSoup 

TDD: Coveage Rate >90%  =98%
    20220531-jian&li-NYCSchoolsTests:
        testSchoolListViewModel:
            mock data for load school list
        testSchoolSATViewModel
            mock data for load SAT data
    NYCSchoolsUITests:
        testSwitchBetween1And2:
            simulated switch between screen 1 and screen 2
```
### π  Appearance / Behavior Customization
![Demo Snapshot](https://github.com/jala886/20220531-jian-li-NYCSchools/blob/main/Demo%20Snapshot/DetailView.png)

### π Adapt visibility of:


### πͺ Custom controls


## π» Supported Platforms

| π± | iOS 13+ |
| :-: | :-: |
| π₯ | **macOS 10.15+** | 
| πΊ | **tvOS 13+** |
| βοΈ | **watchOS 6+** |



### π Annotations: The old-fashioned approach



## π© Installation


## βοΈ Author

Jian Li

## π License

# Comment
This was starting for a Interview, then I made improved!

