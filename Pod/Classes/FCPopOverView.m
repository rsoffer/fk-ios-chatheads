//
//  Copyright 2014 Flipkart Internet Pvt Ltd
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

#import "FCPopOverView.h"
#import "FCCHConstants.h"

@implementation FCPopOverView

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.layer.opacity = 0.f;
    
    [UIView animateWithDuration:kPopoverDisplayAnimationDuration animations:^{
        self.layer.opacity = 1.f;
    }];
}

- (CGRect)bubbleFrame
{
    if (!CGRectIsNull(self.fixedBubbleRect)) {
        return self.fixedBubbleRect;
    }
    
    CGRect bubbleFrame = CGRectMake(0,
                                    self.pointerSize,
                                    [[UIScreen mainScreen] bounds].size.width,
                                    [[UIScreen mainScreen] bounds].size.height - DEFAULT_CHAT_HEAD_FRAME.size.height - 10.0);
    return bubbleFrame;
}

@end
