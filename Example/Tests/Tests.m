//
//  cocoa-m3uTests.m
//  cocoa-m3uTests
//
//  Created by Katsuma Ito on 07/22/2014.
//  Copyright (c) 2014 Katsuma Ito. All rights reserved.
//

#import "M3U.h"
#import "TestHelper.h"

SpecBegin(WriterSpecs)

describe(@"write", ^{
    M3UExtendedWriter *writer = [[M3UExtendedWriter alloc] init];
    [writer writeComment:@"Test Comment"];
    [writer writeComment:@"コメント"];
    [writer writeBlankLine];
    [writer writeFileName:@"foo.m4a"];
    [writer writeFileName:@"bar.m4a" duration:10 title:nil];
    [writer writeFileName:@"baz.m4a" duration:20 title:@"Artist - Title"];
    
    it(@"exal to the fixture", ^{
        expect([writer string]).to.equal([TestHelper stringWithContentsOfFixture:@"writer.m3u"]);
    });
});

SpecEnd
