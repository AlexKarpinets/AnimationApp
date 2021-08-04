//
//  Animated.swift
//  AnimationApp
//
//  Created by Karpinets Alexander on 04.08.2021.
//

protocol CaseIterable {
}

import Spring

struct Animated {
    var namePreset: String
    var nameCurve: String
}

extension Animated {
    static func getAnimation() -> [Animated] {
        var animations: [Animated] = []
        
        let namePresets = DataManager.shared.namePresets.shuffled()
        let nameCurves = DataManager.shared.nameCurves.shuffled()
        
        for index in 0..<animations.count {
            
            let animated = Animated(
                namePreset: namePresets[index],
                nameCurve: nameCurves[index])
            
            animations.append(animated)
        }
        return animations
    }
}
