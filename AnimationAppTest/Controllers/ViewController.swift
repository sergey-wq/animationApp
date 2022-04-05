//
//  ViewController.swift
//  AnimationAppTest
//
//  Created by Sergey Runovich on 5.04.22.
//

import Spring

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet private weak var animatedView: SpringView!
    @IBOutlet private weak var presetLabel: UILabel!
    @IBOutlet private weak var curveLabel: UILabel!
    @IBOutlet private weak var forceLabel: UILabel!
    @IBOutlet private weak var durationLabel: UILabel!
    @IBOutlet private weak var delayLabel: UILabel!
    @IBOutlet private weak var animatedButton: UIButton!

    // MARK: - Private properties
    private var randomAnimation = AnimationInfo.getRandomAnimationInfo()

    // MARK: - Live Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsInfoAnimationLabels()
    }

    // MARK: - IB Actions
    @IBAction func animatedButtonAction(_ sender: UIButton) {
        settingsInfoAnimationLabels()
        settingsAnimationView()

        animatedButton.setTitle("Run \(randomAnimation.preset)", for: .normal)
    }

    // MARK: - Private Methods

    private func settingsInfoAnimationLabels() {
        presetLabel.text = randomAnimation.presetDescription
        curveLabel.text = randomAnimation.curveDescription
        forceLabel.text =  "\(randomAnimation.forceDescription)"
        durationLabel.text = "\(randomAnimation.durationDescription)"
        delayLabel.text =  "\(randomAnimation.delayDescription)"
    }

    private func settingsAnimationView() {
        animatedView.animation = randomAnimation.preset
        animatedView.force = CGFloat(randomAnimation.force)
        animatedView.duration = CGFloat(randomAnimation.duration)
        animatedView.delay = CGFloat(randomAnimation.delay)
        animatedView.curve = randomAnimation.curve
        animatedView.animate()

        randomAnimation = AnimationInfo.getRandomAnimationInfo()
    }
}
