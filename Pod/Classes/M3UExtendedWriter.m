//
//  M3UExtendedWriter.m
//  cocoa-m3u
//
//  Created by Katsuma Ito on 2014/07/22.
//  Copyright (c) 2014年 Katsuma Ito. All rights reserved.
//

#import "M3UExtendedWriter.h"

@interface M3UWriter ()
@property (nonatomic) NSMutableArray *data;
@end

@implementation M3UExtendedWriter

- (void)writeFileName:(NSString *)fileName duration:(NSInteger)duration title:(NSString *)title {
    if (duration > 0 || title) {
        NSString *titleStr = title ?: @"";
        NSString *line = [NSString stringWithFormat:@"#EXTINF:%d,%@", duration, titleStr];
        [self write:line];
    }
    [self writeFileName:fileName];
}

- (NSString *)string {
    return [NSString stringWithFormat:@"#EXTM3U\n%@", [super string]];
}

@end