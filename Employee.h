//
//  Employee.h
//  BMITime
//
//  Created by Richard on 14-3-5.
//  Copyright (c) 2014年 com.Richard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@class Asset;

@interface Employee : Person
{
    int employeeID;
    NSMutableArray *assets;
}
@property int employeeID;
- (void)addAssetsObject:(Asset *)a;
- (unsigned int)valueOfAssets;

@end
