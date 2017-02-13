# Particle-animations
一个简单的粒子动画demo，可以自定义动画元素

使用方法：

1、add进Animation_View.h和Animation_View.m两个文件

2、 Animation_View *animationView = [[Animation_View alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    animationView.endAnimationBlock = ^(){
        NSLog(@"动画结束");
    };
    
        //动画元素
//    animationView.iconImage = [UIImage imageNamed:@"coin"];
    //动画背景
//    animationView.backgroundView  = [[UIView alloc]initWithFrame:frame];

    [self.view addSubview:animationView];
    
    //开始动画
        [animationView beginAnimationMethod];
        
        
    //结束动画在Block中
      
