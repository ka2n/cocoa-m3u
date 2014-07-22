//
//  M3UExtendedWriter.h
//  cocoa-m3u
//
//  Created by Katsuma Ito on 2014/07/22.
//  Copyright (c) 2014年 Katsuma Ito. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "M3UWriter.h"

@interface M3UExtendedWriter : M3UWriter

/// Write a file and duration, title
- (void)writeFileName:(NSString *)fileName duration:(NSInteger)duration title:(NSString *)title;

@end