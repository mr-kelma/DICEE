//
//  AnimationManager.swift
//  DICEE
//
//  Created by Valery Keplin on 4.07.22.
//

import Foundation
import AVFoundation

struct SoundManager {
    var player: AVAudioPlayer!
    
    mutating func playSound() {
        let url = Bundle.main.url(forResource: "sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
