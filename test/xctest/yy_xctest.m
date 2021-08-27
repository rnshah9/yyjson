#import <XCTest/XCTest.h>
#include "yyjson.h"
#include "yy_test_utils.h"

@interface YYTestCase : XCTestCase
@end

@implementation YYTestCase

// Code generated by cmake:

- (void)test_allocator {
    extern void test_allocator(void);
    test_allocator();
}

- (void)test_json_mut_val {
    extern void test_json_mut_val(void);
    test_json_mut_val();
}

- (void)test_json_pointer {
    extern void test_json_pointer(void);
    test_json_pointer();
}

- (void)test_json_merge_patch {
    extern void test_json_merge_patch(void);
    test_json_merge_patch();
}

- (void)test_json_reader {
    extern void test_json_reader(void);
    test_json_reader();
}

- (void)test_json_val {
    extern void test_json_val(void);
    test_json_val();
}

- (void)test_json_writer {
    extern void test_json_writer(void);
    test_json_writer();
}

- (void)test_number {
    extern void test_number(void);
    test_number();
}

- (void)test_roundtrip {
    extern void test_roundtrip(void);
    test_roundtrip();
}

- (void)test_string {
    extern void test_string(void);
    test_string();
}



@end

const char *yyjson_test_data_path(void) {
    static const char *path;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *dataPath = [[NSBundle bundleForClass:YYTestCase.class] resourcePath];
        path = strdup(dataPath.UTF8String);
    });
    return path;
}
