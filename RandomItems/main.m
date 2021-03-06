//
//  main.m
//  RandomItems
//
//  Created by Desmond on 4/19/14.
//  Copyright (c) 2014 Desmond Cain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        // Send the message addObject: to the NSMutableArrary pointed to by
        // the variable items, passing a string each time
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // Send another message, insertObject:atIndex:, to that same array object
        [items insertObject:@"Zero" atIndex:0];
        
        // For every item in the items array...
        for (NSString *item in items) {
            // Log the decription of the item
            NSLog(@"%@", item);
        }
        
        BNRItem *item = [[BNRItem alloc] init];
        
        // This creates an NSString, "Red Sofa" and gives it to the BNRItem
        item.itemName = @"Red Sofa";
        
        // This creates an NSString, "A1B2C" and gives it to the BNRItem
        item.serialNumber = @"A1B2C";
        
        // This sends the value 100 to be used as the valueInDollars of this BNRItem
        item.valueInDollars = 100;
        
        NSLog(@"%@ %@ %@ %d", item.itemName, item.dateCreated,
                              item.serialNumber, item.valueInDollars);
        
        // Destroy the mutable array object
        items = nil;
        
    }
    return 0;
}

