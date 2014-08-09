//
//  Asset.m
//  BMITime
//
//  Created by Richard on 14-3-8.
//  Copyright (c) 2014年 com.Richard. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset

@synthesize label, resaleValue, holder;

- (NSString *)description
{
    if ([self holder]) {
        return [NSString stringWithFormat:@"<%@ : $%d, assigned to %@>", [self label], [self resaleValue], [self holder]];
    }else{
        return [NSString stringWithFormat:@"<%@: $%d unsigned>", [self label], [self resaleValue]];
    }
}

- (void)dealloc
{
    NSLog(@"dealloccating %@", self);
}
@end
