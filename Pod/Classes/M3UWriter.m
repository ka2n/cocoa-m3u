//
//  M3UWriter.m
//  cocoa-m3u
//
//  Created by Katsuma Ito on 2014/07/22.
//  Copyright (c) 2014年 Katsuma Ito. All rights reserved.
//

#import "M3UWriter.h"

@interface M3UWriter ()
@property (nonatomic) NSMutableArray *data;
@end

@implementation M3UWriter

- (id)init {
    self = [super init];
    if (self) {
        self.data = [NSMutableArray array];
    }
    return self;
}

- (void)write:(NSString *)line {
    if (line) {
        [self.data addObject:line];
    }
}

- (void)writeBlankLine {
    [self.data addObject:@""];
}


- (void)writeComment:(NSString *)comment {
    if (comment) {
        [self write:[NSString stringWithFormat:@"#%@", comment]];
    }
}

- (void)writeFileName:(NSString *)fileName {
    if (fileName) {
        [self write:fileName];
    }
}

- (NSString *)string {
    return [self.data componentsJoinedByString:@"\n"];
}

@end
