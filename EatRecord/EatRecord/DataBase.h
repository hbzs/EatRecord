//
//  DataBase.h
//  EatRecord
//
//  Created by hourunjing on 16/5/7.
//  Copyright © 2016年 hourunjing. All rights reserved.
//

typedef void(^HandleQuery)(FMResultSet *);

#import <Foundation/Foundation.h>

@interface DataBase : NSObject

+ (instancetype)sharedInstance;

- (void)createTable:(NSString *)sql name:(NSString *)tableName;
- (void)executeInsert:(NSString *)sql,...;
- (void)executeUpdate:(NSString *)sql,...;
- (void)executeDelete:(NSString *)sql name:(NSString *)tableName;
- (void)executeQuery:(NSString *)sql handle:(HandleQuery)handleQuery;

@end
