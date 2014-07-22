//
//  M3UWriter.h
//  cocoa-m3u
//
//  Created by Katsuma Ito on 2014/07/22.
//  Copyright (c) 2014年 Katsuma Ito. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface M3UWriter : NSObject

/// Write raw single line
- (void)write:(NSString *)line;

/// Write signle blank line
- (void)writeBlankLine;

/// Write a comment
- (void)writeComment:(NSString *)comment;

/// Write a file
- (void)writeFileName:(NSString *)fileName;

/// Export as NSString
- (NSString *)string;

@end
