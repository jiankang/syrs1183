//
//  ViewController.h
//  flashcontrol
//
//  Created by Jim Wang on 3/29/17.
//  Copyright © 2017 Jim Wang. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebFrame.h>
#import <WebKit/WebView.h>

@interface ViewController : NSViewController
{
	IBOutlet WebView* m_webview;
	IBOutlet NSButton* m_choose;
	IBOutlet NSButton* m_play;
	IBOutlet NSButton* m_pause;
	IBOutlet NSButton* m_stop;
}

- (IBAction)onChoose:(id)sender;
- (IBAction)onPlay:(id)sender;
- (IBAction)onPause:(id)sender;
- (IBAction)onStop:(id)sender;
@end

