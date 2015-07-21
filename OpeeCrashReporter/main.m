//
//  main.m
//  OpeeCrashReporter
//
//  Created by System Administrator on 7/21/15.
//  Copyright © 2015 Mustafa Gezen. All rights reserved.
//

@import Opee;

ZKSwizzleInterface(_Opee_CrashReport, CrashReport, NSObject);
@implementation _Opee_CrashReport
- (id)bundleIdentifier {
	id original = ZKOrig(id);
	NSString *content = @"";
	NSData *fileContents = [content dataUsingEncoding:NSUTF8StringEncoding];
	[[NSFileManager defaultManager] createFileAtPath:[NSHomeDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:@"Library/.%@", original]] contents:fileContents attributes:nil];
    return original;
}
@end