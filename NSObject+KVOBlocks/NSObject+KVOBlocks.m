//
//  NSObject+KVOBlocks.m
//  CALX
//
//  Created by Daniel Clelland on 3/01/15.
//  Copyright (c) 2015 Daniel Clelland. All rights reserved.
//

#import <objc/runtime.h>

#import "NSObject+KVOBlocks.h"

@implementation NSObject (KVOBlocks)

#pragma mark - Overrides

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    KVOBlock block = [self observerBlockForKeyPath:keyPath];
    
    if (block) {
        block(change);
    }
}

#pragma mark - Observers

- (void)setObserverBlock:(KVOBlock)block forKeyPath:(NSString *)keyPath
{
    objc_setAssociatedObject(self, (__bridge const void *)(keyPath), block, OBJC_ASSOCIATION_COPY);
    
    if (block) {
        [self addObserver:self forKeyPath:keyPath options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    } else {
        [self removeObserver:self forKeyPath:keyPath];
    }
}

- (KVOBlock)observerBlockForKeyPath:(NSString *)keyPath
{
    return objc_getAssociatedObject(self, (__bridge const void *)(keyPath));
}

@end
