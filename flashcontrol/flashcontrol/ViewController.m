//
//  ViewController.m
//  flashcontrol
//
//  Created by Jim Wang on 3/29/17.
//  Copyright © 2017 Jim Wang. All rights reserved.
//

#import "ViewController.h"

NSString*  g_htmlFLVTemplate = @"<html>\n "
"<head>\n "
"<title>HTML Example File</title>\n "
"<script type=\"text/javascript\" language=\"JavaScript1.4\">\n "
"function SetFrame(parameterOne, parameterTwo) \n"
"{\n"
"document.getElementById('movie').left = 0;\n"
"document.getElementById('movie').top = 0;\n"
"document.getElementById('movie').width = parameterOne;\n"
"document.getElementById('movie').height = parameterTwo;\n"
"}\n"
"function SetReady()\n"
"{\n"
"	var flashVideoPlayer;\n"
"	flashVideoPlayer = document.getElementById('movie');\n"
"	flashVideoPlayer.flv_setReady(true);\n"
"}\n"
"function StartMovie(strFLVPath)\n "
"{\n "
"	var flashVideoPlayer;\n"
"	flashVideoPlayer = document.getElementById('movie');\n"
"	flashVideoPlayer.flv_open(strFLVPath,  3);\n"
"}\n"
"function PauseMovie()\n"
"{\n"
"	var flashVideoPlayer;\n"
"	flashVideoPlayer = document.getElementById('movie');\n"
"	flashVideoPlayer.flv_pause();\n"
"}\n"
"function StopMovie() \n"
"{\n"
"	var flashVideoPlayer;\n"
"	flashVideoPlayer = document.getElementById('movie');\n"
"	flashVideoPlayer.flv_stop();\n"
"}\n"
"function SeekMovie(nPos)\n"
"{\n"
"	var flashVideoPlayer;\n"
"	flashVideoPlayer = document.getElementById('movie');\n"
"	flashVideoPlayer.flv_seek(nPos);\n"
"}\n"
"function FitSize( )\n"
"{\n"
"	var flashVideoPlayer;\n"
"	flashVideoPlayer = document.getElementById('movie');\n"
"	flashVideoPlayer.flv_setSize();\n"
"}\n"
"function GetCurrPos( ) \n"
"{\n"
"	var flashVideoPlayer;\n"
"	flashVideoPlayer = document.getElementById('movie');\n"
"	return flashVideoPlayer.flv_getCurrPos();\n"
"}\n"
"function GetDuration( ) \n"
"{\n"
"	var flashVideoPlayer;\n"
"	flashVideoPlayer = document.getElementById('movie');\n"
"	return flashVideoPlayer.flv_getDuration();\n"
"}\n"
"function GetPlayStatus( ) \n"
"{\n"
"	var flashVideoPlayer;\n"
"	flashVideoPlayer = document.getElementById('movie');\n"
"	return flashVideoPlayer.flv_getPlayStatus();\n"
"}\n"
"</script>\n"
"</head> \n"
"<body bgcolor=\"#000000\" eftmargin=0 topmargin=0> \n"
"<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"550\" height=\"420\" id=\"movie0\" align=\"middle\">\n"
"<param name=\"quality\" value=\"high\" />\n"
"<param name=\"bgcolor\" value=\"#000000\" />\n"
"<param name=\"allowscriptaccess\" value=\"always\" />\n"
"<embed id=\"movie\" src=\" %@\" menu=\"false\" quality=\"high\"  width=\"550\" height=\"420\" name=\"movie\" align=\"middle\"  type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n"
"</object><br>\n"
"</body>\n"
"</html>\n ";

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	// Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
	[super setRepresentedObject:representedObject];

	// Update the view, if already loaded.
}

- (void)loadFlv:(NSString*)filepath
{
	[[m_webview mainFrame] loadHTMLString:[NSString stringWithFormat:g_htmlFLVTemplate,filepath] baseURL:nil];
}

- (IBAction)onChoose:(id)sender
{
	NSOpenPanel* openPanel = [NSOpenPanel openPanel];
	openPanel.allowedFileTypes = @[@"flv"];
	NSInteger result = [openPanel runModal];
	if(result == NSFileHandlingPanelOKButton)
	{
		NSString* filePath = openPanel.URL.path;
		NSLog(@"onChoose: %@",filePath);
		[self loadFlv:filePath];
	}
}

- (IBAction)onPlay:(id)sender
{

}

- (IBAction)onPause:(id)sender
{

}

- (IBAction)onStop:(id)sender
{

}

@end
