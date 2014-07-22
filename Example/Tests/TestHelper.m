//
//  TestHelper.m
//  cocoa-m3u
//
//  Created by Katsuma Ito on 2014/07/22.
//

#import "TestHelper.h"

@implementation TestHelper

+ (NSBundle *)bundle {
    return [NSBundle bundleForClass:self.class];
}

+ (NSString *)stringWithContentsOfFixture:(NSString *)fixture {
    NSString *resourcePath = [[self bundle] pathForResource:fixture ofType:nil];
    if (!resourcePath) {
        return nil;
    }
    return [NSString stringWithContentsOfFile:resourcePath encoding:NSUTF8StringEncoding error:nil];
}
@end
