//
//  DataManager.swift
//  AnimationApp
//
//  Created by Karpinets Alexander on 04.08.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    let namePresets = ["pop", "shake", "squeeze"]
    let nameCurves = ["easeInOut", "easeInSine", "easeInQuad"]
    
    private init() {}
    
}
