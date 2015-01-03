NSObject-KVOBlocks
==================

Real basic block-based KVO using associated objects. Based on Stephan Leroux's [KVO-Blocks](https://github.com/sleroux/KVO-Blocks) pod.

Subscribes to `NSKeyValueObservingOptionNew` and `NSKeyValueObservingOptionOld` with a nil context.

✓ Set a block!

    [self.object setObserverBlock^(NSDictionary *change) {
        NSLog(@"old value: %@", change[NSKeyValueChangeOldKey]);
        NSLog(@"new value: %@", change[NSKeyValueChangeNewKey]);
    } forKeyPath:NSStringFromSelector(@selector(aSelector))];]

✓ Remove a block!

    [self.object setObserverBlock:nil forKeyPath:NSStringFromSelector(@selector(aSelector))];

### Full API:

NSObject (KVOBlocks)

    - (void)setObserverBlock:(KVOBlock)block forKeyPath:(NSString *)keyPath;
    - (KVOBlock)observerBlockForKeyPath:(NSString *)keyPath;
