//
//  NSObject+KVOBlocks.h
//  CALX
//
//  Created by Daniel Clelland on 3/01/15.
//  Copyright (c) 2015 Daniel Clelland. All rights reserved.
//

/*
 Based on Stephan Leroux's KVO-Blocks
 https://github.com/sleroux/KVO-Blocks
 */

#import <Foundation/Foundation.h>

typedef void (^KVOBlock)(NSDictionary *change);

@interface NSObject (KVOBlocks)

- (void)setObserverBlock:(KVOBlock)block forKeyPath:(NSString *)keyPath;
- (KVOBlock)observerBlockForKeyPath:(NSString *)keyPath;

@end
