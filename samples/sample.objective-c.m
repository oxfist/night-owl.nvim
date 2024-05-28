#import <Foundation/Foundation.h>

// Interface
@interface FooBar : NSObject
@property (nonatomic, strong) NSString *foo;
@property (nonatomic, assign) NSInteger bar;
- (void)print;
@end

// Implementation
@implementation FooBar
- (void)print {
    NSLog(@"Foo: %@, Bar: %ld", self.foo, (long)self.bar);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Using the class
        FooBar *foobar = [[FooBar alloc] init];
        foobar.foo = @"Lorem Ipsum";
        foobar.bar = 123;
        [foobar print];

        // Using an array
        NSArray *baz = @[@1, @2, @3, @4, @5];
        for (NSNumber *i in baz) {
            NSLog(@"%@", i);
        }

        // Using a dictionary
        NSDictionary *qux = @{@"foo": @"bar", @"baz": @"qux"};
        for (NSString *key in qux) {
            NSLog(@"Key: %@, Value: %@", key, qux[key]);
        }

        // Using control structures
        if ([qux objectForKey:@"foo"]) {
            NSLog(@"Found foo: %@", qux[@"foo"]);
        } else {
            NSLog(@"Did not find foo");
        }

        // Using a switch statement
        switch (foobar.bar) {
            case 123:
                NSLog(@"Bar is 123");
                break;
            default:
                NSLog(@"Bar is not 123");
                break;
        }
    }
    return 0;
}
