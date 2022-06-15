//
//  OnboardViewController.swift
//  DoneIn21
//
//  Created by Alex A. Rocha on 14/06/22.
//

import UIKit

class OnboardViewController: UIPageViewController {
    
    private var onboardViewControllers: [UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self
        
        onboardViewControllers = [
            getOnboardViewControllerById(storyboardId: "LearnViewController"),
            getOnboardViewControllerById(storyboardId: "DiscoverViewController"),
            getOnboardViewControllerById(storyboardId: "HabitsViewController")
        ]
        
        if let startingViewController = onboardViewControllers.first {
    
            setViewControllers([startingViewController],
                               direction: .forward,
                               animated: true)
            
        }
        
    }
    
    private func getOnboardViewControllerById(storyboardId: String) -> UIViewController {
        
        return UIStoryboard(name: "Onboard", bundle: nil).instantiateViewController(withIdentifier: storyboardId)
        
    }

}

extension OnboardViewController: UIPageViewControllerDataSource {
    
//    func presentationCount(for pageViewController: UIPageViewController) -> Int {
//        return onboardViewControllers.count
//    }
//
//    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
//
//        guard let firstViewController = viewControllers?.first,
//              let firstViewControllerIndex = onboardViewControllers.firstIndex(of: firstViewController) else {
//                return 0
//        }
//            
//        return firstViewControllerIndex
//
//    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard var currentViewControllerIndex = onboardViewControllers.firstIndex(of: viewController) else {
            return nil
        }
        
        if(currentViewControllerIndex == 0) {
            return nil
        }
        
        currentViewControllerIndex -= 1
        
        return onboardViewControllers[currentViewControllerIndex]
        
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard var currentViewControllerIndex = onboardViewControllers.firstIndex(of: viewController) else {
            return nil
        }
        
        if(currentViewControllerIndex == onboardViewControllers.count - 1) {
            return nil
        }
        
        currentViewControllerIndex += 1
        
        return onboardViewControllers[currentViewControllerIndex]
        
    }
    
}
