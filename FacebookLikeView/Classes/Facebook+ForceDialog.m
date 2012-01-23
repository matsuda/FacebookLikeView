//
//  Facebook+ForceDialog.m
//  Yardsellr
//
//  Created by Thomas Brow on 12/10/10.
//  Copyright 2010 Tom Brow. All rights reserved.
//

#import <objc/message.h>
#import "Facebook.h"

@implementation Facebook(ForceDialog)

- (void)authorize:(NSArray *)permissions
{
    // Hack to force Facebook SDK to always use in-app dialog for auth
    [_permissions release];
    _permissions = [permissions retain];

    objc_msgSend(self, @selector(authorizeWithFBAppAuth:safariAuth:), NO, NO);
}

@end

