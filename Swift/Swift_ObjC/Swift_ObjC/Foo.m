//
//  Foo.m
//  Swift_ObjC
//
//  Created by Amin Benarieb on 2/28/17.
//  Copyright © 2017 Amin Benarieb. All rights reserved.
//

#import "Foo.h"
#import "Swift_ObjC-Swift.h"

@implementation Foo

+ (NSString *)appDelegateBar {
	AppDelegate *appDelegate = (AppDelegate *)(UIApplication.sharedApplication.delegate);
	return [appDelegate bar];;
}

@end
