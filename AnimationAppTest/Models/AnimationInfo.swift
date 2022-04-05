//
//  AnimationInfo.swift
//  AnimationAppTest
//
//  Created by Sergey Runovich on 5.04.22.
//

import Foundation

struct AnimationInfo {

    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float

    var presetDescription: String {
        "preset: \(preset)"
    }
    var curveDescription: String {
        "curve: \(curve)"
    }
    var forceDescription: String {
        "force: \(String(format: "%.02f", force))"
    }
    var durationDescription: String {
        "force: \(String(format: "%.02f", duration))"
    }
    var delayDescription: String {
        "force: \(String(format: "%.02f", delay))"
    }

    static func getRandomAnimationInfo() -> AnimationInfo {
        return AnimationInfo(
            preset: AnimationManager.shared.animationsPresets.randomElement()?.rawValue ?? "",
            curve: AnimationManager.shared.animationsCurves.randomElement()?.rawValue ?? "",
            force: Float.random(in: 0.7...1),
            duration: Float.random(in: 0.7...1),
            delay: Float.random(in: 0.2...0.3)
        )
    }
}

