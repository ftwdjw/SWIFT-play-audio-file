//
//  ViewController.swift
//  Audio
//
//  Created by Jared Davidson on 2/4/15.
//  Copyright (c) 2015 Archetapp. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet var PausePlay: UIButton!
    
    var ButtonAudioPlayer = try? AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("ButtonAudio", ofType: "wav")!))
    
    var BackgroundAudio = try? AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("BackgroundAudio", ofType: "mp3")!))

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        BackgroundAudio!.play()
        
}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func PlayAudio1(sender: AnyObject) {
        ButtonAudioPlayer!.play()
        
    }
    @IBAction func Stop(sender: AnyObject) {
        BackgroundAudio!.stop()
        BackgroundAudio!.currentTime = 0
        
        PausePlay.setTitle("Play", forState: UIControlState.Normal)
        
    }

    @IBAction func Restart(sender: AnyObject) {
        
        BackgroundAudio!.stop()
        BackgroundAudio!.currentTime = 0
        BackgroundAudio!.play()
        
        
    }
    
    
    @IBAction func PausePlay(sender: AnyObject) {
        
        if (BackgroundAudio!.playing == true){
            BackgroundAudio!.stop()
            PausePlay.setTitle("Play", forState: UIControlState.Normal)
            
        }
        else{
            
            BackgroundAudio!.play()
            PausePlay.setTitle("Pause", forState: UIControlState.Normal)
            
            
        }
        
        
    }

    
}

