//
//  CreateTable.m
//  EatRecord
//
//  Created by hourunjing on 16/5/9.
//  Copyright © 2016年 hourunjing. All rights reserved.
//

#import "CreateTable.h"
#import "DataBase.h"
#import "UserDefaults.h"
#import "SQL.h"
#import "FMDBMigrationManager.h"

@implementation CreateTable

- (void)createTable {
  FMDBMigrationManager *manager = [FMDBMigrationManager managerWithDatabaseAtPath:[NSString stringWithFormat:@"%@/%@",PATH_OF_DOCUMENT,@"eatrecord.db"]  migrationsBundle:[NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"migrations" ofType:@"bundle"]]];
  
  BOOL resultState = NO;
  NSError *error = nil;
  if (!manager.hasMigrationsTable) {
    resultState = [manager createMigrationsTable:&error];
  }
  
  resultState = [manager migrateDatabaseToVersion:UINT64_MAX progress:nil error:&error];//迁移函数

  debugLog(@"originVersion-%@:currentVersion-%@:%@",@(manager.originVersion),@(manager.currentVersion),resultState?@"succ to migrations":@"err to migrations");
}

@end
