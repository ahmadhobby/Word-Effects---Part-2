//
//  main.m
//  Word Effects - Part 2
//
//  Created by Ahmad Hobby on 2018-06-04.
//  Copyright © 2018 Ahmad Hobby. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while (YES) {
            
            // 255 unit long array of characters
            char inputChars[255];
            
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            // print as a c string
            printf("Your string is %s\n", inputChars);
            
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String: inputChars];
            
            NSLog(@"Input was: %@", inputString);
            
            NSString *upperCase = inputString.uppercaseString;
            NSLog(@"Upper case text is: %@", upperCase);
            
            NSString *lowerCase = inputString.lowercaseString;
            NSLog(@"Lower case text is: %@", lowerCase);
            
            NSUInteger numberizedText = [inputString intValue];
            NSLog(@"Numberized text is: %ld", numberizedText);
            
            NSString *canadianizedText = [NSString stringWithFormat:@"%@, eh?", inputString];
            NSLog(@"Canadianized text is: %@", canadianizedText);
            
            BOOL textWithQuestionMark = [inputString containsString:@"?"];
            BOOL textWithExclamationPoint = [inputString containsString:@"!"];
            
            if (textWithQuestionMark) {
                NSLog(@"I don't know");
            } else if (textWithExclamationPoint) {
                NSLog(@"Whoa, calm down!");
            }
            
            NSString *replacedString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
            NSLog(@"%@", replacedString);
            
        }
        
    }
    return 0;
}
