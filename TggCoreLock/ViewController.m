//
//  ViewController.m
//  TggCoreLock
//
//  Created by 吴玉铁 on 2016/12/13.
//  Copyright © 2016年 吴玉铁. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    KeychainItemWrapper *wrapper = [[KeychainItemWrapper alloc] initWithIdentifier:@”Password” accessGroup:nil];
    
    标识符（Identifier）在后面我们要从keychain中取数据的时候会用到。如果你想要在应用之间共享信息，那么你需要指定访问组（access group）。有同样的访问组 的应用能够访问同样的keychain信息。
    
    KeychainItemWrapper *wrapper = [[KeychainItemWrapper alloc] initWithIdentifier:@”Account Number” accessGroup:@”YOUR_APP_ID_HERE.com.yourcompany.GenericKeychainSuite”];
    
    要把信息保存到keychain中，使用 setObject:forKey: 方法。在这里， (id)kSecAttrAccount 是一个预先定义好的键（key），我们可以用它来保存账号名称。 kSecClass指定了我们要保存的某类信息，在这里是一个通用的密码。kSecValueData可以被用来保存任意的数据，在这里是一个密码。
    
    [wrapper setObject:kSecClassGenericPassword forKey:(id)kSecClass];
    
    [wrapper setObject:@"username" forKey:(id)kSecAttrAccount];
    
    [wrapper setObject:@"password"forKey:(id)kSecValueData];
    
    [wrapper setObject:(id)kSecAttrAccessibleAlwaysThisDeviceOnly forKey:(id)kSecAttrAccessible];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
