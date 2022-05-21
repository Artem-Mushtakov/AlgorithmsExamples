//
//  BinarySearchViewController.swift
//  AlgorithmsExamples
//
//  Created by Artem Mushtakov on 21.05.2022.
//

import UIKit

class BinarySearchViewController: UIViewController {
    
    // Отсортированный массив
    let intArray = Array(1...333333).sorted()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        binarySearch(list: intArray, item: 5434)
        multiBinarySearch(list: ["one", "two", "three", "four","five", "six", "seven", "nine"].sorted(), item: "3")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // List массив данных в котором ищем, item значение которое нужно найти
    func binarySearch(list: Array<Int>, item: Int) {
        /// minNumber минимальное число индекса
        var minNumber = 0
        /// maxNumber максимальное число индекса
        var maxNumber = list.count - 1
        
        ///  пока minNumber меньше или равно maxNumber будет выполняться цикл
        while minNumber <= maxNumber {
            /// mid середина отрезка поиска
            let mid = (minNumber + maxNumber) / 2
            /// currentIndex текущий идекс отрезка поиска
            let currentIndex = list[mid]
            /// проверка индекса на равенство с нашим числом
            if currentIndex == item {
                print("Found item by index - \(mid)")
            }
            ///
            if currentIndex > item {
                maxNumber = mid - 1
            } else {
                minNumber = mid + 1
            }
        }
        print("Item not found")
    }
    
    // Тип <Т> соответствеут типу Comparable для проведения сравнения <, <=, >=, и >.
    func multiBinarySearch<T: Comparable>(list: [T], item: T) {
        
        var minNumber = 0
        var maxNumber = list.count - 1
        
        while minNumber <= maxNumber {
            let mid = (minNumber + maxNumber) / 2
            let currentIndex = list[mid]
            
            if currentIndex == item {
                print("Current item by index \(mid)")
            }
            if currentIndex > item {
                maxNumber = mid - 1
            } else {
                minNumber = mid + 1
            }
        }
        print("Item not found")
    }
}
