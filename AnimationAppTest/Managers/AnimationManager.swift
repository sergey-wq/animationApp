//
//  AnimationManager.swift
//  AnimationAppTest
//
//  Created by Sergey Runovich on 5.04.22.
//

import Spring

class AnimationManager {

    static let shared = AnimationManager()

    let animationsPresets : [Spring.AnimationPreset] = [
        .fadeIn,
        .fadeInDown,
        .fadeInLeft,
        .fadeInRight,
        .fadeOut,
        .fadeInUp,
        .fadeOutIn,
        .fall,
        .flash,
        .flipX,
        .pop,
        .slideLeft,
        .slideDown,
        .zoomIn,
        .zoomOut
    ]

    let animationsCurves: [Spring.AnimationCurve] = [
        .easeIn,
        .easeInBack,
        .easeInCubic,
        .easeInOutCirc,
        .easeInOutBack,
        .easeInExpo,
        .easeInOutQuad,
        .easeInOutExpo,
        .easeInQuart,
        .easeOutBack,
        .easeOutQuad,
        .linear
    ]
}
