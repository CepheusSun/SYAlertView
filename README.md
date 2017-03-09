# SYAlertView
一个好用的AlertView



# Usage

`SYAlertViewGlobalConfig`类 提供了大量自定义弹出窗口 UI 样式的setter 方法。如果你有改变 titleColor 等需求，可以使用这个类全局的修改所有弹出窗口的样式。像下面代码一样。

```obj-c
[SYAlertViewGlobalConfig syav_setNormalOptBackgroundColor:@"FFFFFF"];
[SYAlertViewGlobalConfig syav_setNormalOptHighlightBackgroundColor:@"D7D7D7"];
[SYAlertViewGlobalConfig syav_setNormalOptTextColor:@"333333"];
```

# 弹出窗口

* 没有 title 和 content 

```obj-c
[SYAlertView showAlertViewWithOptions:@[@"opt1", @"opt2"] withCallback:^(NSInteger index) {
    NSLog("%ld",index);
}];
```


* 如果加上 cancel 只有两个 option 的时候会自动排成水平的两个





* 在不需要取消按钮的时候，将 isHiddenCancelOption 传入 YES


* 在类似强制更新的需求中，如果需要弹出窗口不在关闭，isAlwaysVisible 传入 YES。

```obj-c
[SYAlertView showAlertViewWithTitle:@"aaa" withContent:@"" withOptions:@[] isHiddenCancelOption:NO isAlwaysVisible:YES withCallback:^(NSInteger index) {
        
}];
```

* 清除所有弹窗

```obj-c
+ (void)closeAllAlertView;
```


