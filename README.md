# Cordinator-Pattern-Sample
### This an Example and base for the coordinator design pattern using the [XCoordinator][XCoordinator] pod 👋

<img alt="Swift" src="https://img.shields.io/badge/swift-%23FA7343.svg?&style=for-the-badge&logo=swift&logoColor=white"/><img alt="IOS" src="https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white"><img alt="App Store" src="https://img.shields.io/badge/App_Store-0D96F6?style=for-the-badge&logo=app-store&logoColor=white" />

XCoordinator][XCoordinator] is a navigation framework based on the **Coordinator** pattern.
It's especially useful for implementing MVVM-C, Model-View-ViewModel-Coordinator:

<p align="center">
  <img src="https://quickbirdstudios.com/files/xcoordinator/mvvmc.png">
</p>

## Coordinator Pattern Using XCoordinator Advantages: 

- Reusable Views and ViewModels because they do not contain any navigation logic.
- RxSwift ane Combine compatibility and pod extensions
- Less coupling between components.
- No Need for using UITabBarController or UINavigationController in Storyboards or Embedding Programmatically.
- DeepLinking Support.
- Custom Transtions Between ViewControllers.
- Separation of responsibilities with the coordinator being the only component knowing anything related to the flow of your application.
- Changeable navigation: Each coordinator is only responsible for one component and does not need to make assumptions about its parent. It can therefore be placed wherever we want to.

In the following line of code this will be the line you will use to present, push, pop and dismiss ViewControllers.

```swift
 router?.trigger(.myView)
```

## Important Notes:
  
- Open your terminal type 'cd' and drag the project folder and type this line:
```
pod install
```
- To understand it more go to [XCoordinator][XCoordinator] offical repo in Github and Check this [Article][Article] too 👋
- 
[XCoordinator]: https://github.com/quickbirdstudios/XCoordinator
[Article]: https://www.raywenderlich.com/books/design-patterns-by-tutorials/v3.0/chapters/23-coordinator-pattern
[contact]: https://www.linkedin.com/in/ali-fayed-8682aa1a6/
[fb]: https://www.facebook.com/alifayed26/
[tw]: https://www.twitter.com/Aliifayed
[mail]: https://docs.google.com/document/d/1Oo4S9pl0yM4K4uewlOh7poLAmEKLbjnFelIYHxBQL7o/edit?usp=sharing


## Contact Me:

[<img alt="LinkedIn" src="https://img.shields.io/badge/linkedin%20-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white"/>][contact]  [<img alt="Facebook" src="https://img.shields.io/badge/Facebook%20-%231877F2.svg?&style=for-the-badge&logo=Facebook&logoColor=white"/>][fb]  [<img alt="Twitter" src="https://img.shields.io/badge/Aliifayed%20-%231DA1F2.svg?&style=for-the-badge&logo=Twitter&logoColor=white"/>][tw]  [<img alt="Gmail" src="https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white" />][mail]
