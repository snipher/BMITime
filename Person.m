//
//  Person.m
//  BMITime
//
//  Created by Richard on 14-3-5.
//  Copyright (c) 2014年 com.Richard. All rights reserved.
//

#import "Person.h"

@implementation Person

- (float)heightInMeters
{
    return heightInMeters;
}
- (void)setHeightInMeters:(float)h
{
    heightInMeters = h;
}

- (int)weightInKilos
{
    return weightInKilos;
}
- (void)setWeightInKilos:(int)w
{
    weightInKilos = w;
}

//@synthesize heightInMeters, weightInKilos;

- (float)bodyMassIndex
{
//    return weightInKilos/(heightInMeters * heightInMeters);
    float h = [self heightInMeters];
    float bmi = [self weightInKilos] / (h * h);
    return bmi;
}
@end
