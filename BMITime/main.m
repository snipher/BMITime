//
//  main.m
//  BMITime
//
//  Created by Richard on 14-3-5.
//  Copyright (c) 2014年 com.Richard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        // 创建Person类实例
//        Employee *dick = [[Employee alloc] init];
//        id dick = [[Person alloc] init];
        //为实例变量赋值
//        [dick setWeightInKilos:96];
//        [dick setHeightInMeters:1.8];
//        [dick setEmployeeID:15];
//        
//        float bmi = [dick bodyMassIndex];
//        NSLog(@"dick with ID %d has BMI of %f", [dick employeeID], bmi);
        
        
        
        
        
        
        //创建mutablearray对象，用来包含多个employee对象
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        //创建NSMutableDictionary对象，用于包含多个主管
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        for (int i = 0; i < 10; i++) {
            //创建employee实例
            Employee *person = [[Employee alloc] init];
            
            //为实例变量赋值
            [person setWeightInKilos:90 + i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmployeeID:i];
            
            //将新创建的employee实例加NSMutableArray对象
            [employees addObject:person];
            
            if (i == 0) {
                [executives setObject:person forKey:@"CEO"];
            }
            if (i == 1) {
                [executives setObject:person forKey:@"CTO"];
            }
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        //循环10次（创建10个Asset对象）
        for (int i = 0; i < 10; i++) {
            Asset *asset = [[Asset alloc] init];
            
            //为Asset对象设置合适的标签
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i * 17];
            
            //生成0-9之间的随机整数
            NSUInteger randomIndex = random() % [employees count];
            
            //以随机数为索引，取出相应的Employee对象
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            //将Asset对象赋值给该Employee对象
            [randomEmployee addAssetsObject:asset];
            
            [allAssets addObject:asset];
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *ei = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        [employees sortUsingDescriptors:[NSArray arrayWithObjects:voa, ei, nil]];
        
        NSLog(@"executives: %@",executives);
//        NSLog(@"Employee :%@", employees);
//        NSLog(@"Giving up ownership of one employee");
//        [employees removeObjectAtIndex:5];
//        NSLog(@"allAssets: %@", allAssets);
//        NSLog(@"Giving up ownership of array");
        allAssets = nil;
        employees = nil;
        
        
        
        
    }
//    sleep(100);
    return 0;
}

