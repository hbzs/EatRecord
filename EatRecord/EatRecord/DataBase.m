//
//  DataBase.m
//  EatRecord
//
//  Created by hourunjing on 16/5/7.
//  Copyright © 2016年 hourunjing. All rights reserved.
//
#import "DataBase.h"

@implementation DataBase

+ (instancetype)sharedInstance {
  static DataBase *dataBase;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    dataBase = [[DataBase alloc] init];
  });
  
  return dataBase;
}

+ (FMDatabase *)dataBase {
  return [FMDatabase databaseWithPath:[NSString stringWithFormat:@"%@/%@",PATH_OF_DOCUMENT,@"eatrecord.db"]];
}

- (void)executeQuery:(NSString *)sql handle:(HandleQuery)handleQuery {
  FMDatabase *dataBase = [DataBase dataBase];
  if (![dataBase open]) {
    FMResultSet *s = [dataBase executeQuery:sql];
    while ([s next]) {
      handleQuery(s);
    }
    return;
  } else {
    debugLog(@"error when open db");
  }
  
  [dataBase close];
}

- (void)createTable:(NSString *)sql name:(NSString *)tableName {
  FMDatabase * db = [DataBase dataBase];
  if ([db open]) {
    if ([db tableExists:tableName]) {
      debugLog(@"succ exist db table");
    } else {
      BOOL res = [db executeUpdate:sql];
      if (!res) {
        debugLog(@"error when creating db table");
      } else {
        debugLog(@"succ to creating db table");
      }
    }
    [db close];
  } else {
    debugLog(@"error when open db");
  }
}

- (void)executeInsert:(NSString *)sql,... {
  FMDatabase * db = [DataBase dataBase];
  if ([db open]) {
    va_list args;
    va_start(args, sql);
    
    NSString *newSql = [[NSString alloc] initWithFormat:sql arguments:args];
    BOOL res = [db executeUpdate:newSql];
    
    va_end(args);
    if (!res) {
      debugLog(@"error to insert data");
    } else {
      debugLog(@"succ to insert data");
    }
    [db close];
  }
}

- (void)executeUpdate:(NSString *)sql,... {
  FMDatabase * db = [DataBase dataBase];
  if ([db open]) {
    va_list args;
    va_start(args, sql);
    
    BOOL res = [db executeUpdate:sql, args];
    
    va_end(args);
    if (!res) {
      debugLog(@"error to update data");
    } else {
      debugLog(@"succ to update data");
    }
    [db close];
  }
}

- (void)executeDelete:(NSString *)sql name:(NSString *)tableName {
  FMDatabase *db = [DataBase dataBase];
  if ([db open]) {
    if ([db tableExists:tableName]) {
      BOOL res = [db executeUpdate:sql];
      if (!res) {
        debugLog(@"error to delete db data");
      } else {
        debugLog(@"succ to delete db data");
      }
    }
    [db close];
  }
}

@end
