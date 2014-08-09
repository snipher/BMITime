//
//  Asset.h
//  BMITime
//
//  Created by Richard on 14-3-8.
//  Copyright (c) 2014年 com.Richard. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Employee;

@interface Asset : NSObject
{
    NSString *label;
    __weak Employee *holder;
    unsigned int resaleValue;
}
@property (strong) NSString *label;
@property (weak) Employee *holder;
@property unsigned int resaleValue;
@end
