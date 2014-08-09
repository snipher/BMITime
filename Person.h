//
//  Person.h
//  BMITime
//
//  Created by Richard on 14-3-5.
//  Copyright (c) 2014年 com.Richard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    //Person 2个实例变量
    float heightInMeters;
    int weightInKilos;
}

//通过以下方法为实例变量赋值
//- (float)heightInMeters;
//- (void)setHeightInMeters:(float)h;
//- (int)weightInKilos;
//- (void)setWeightInKilos:(int)w;

@property float heightInMeters;
@property int weightInKilos;

//计算bodyMassIndex
- (float)bodyMassIndex;

@end
