Introduction:
Menu selector, there are two partitions: choose partitions and not choose partitions, we are free to change the inside of the two partition channel, click on a partition inside the channel,
This channel will enter another partition. We can also through the long press event, if the mobile channel within the partition, can change the order channel, if
Move across partitions, channel can be dragged to another partition and rearrangement.

## Usage
XWMenuPicker will drag when used in engineering, the introduction of "XWMenuViewController. H" header files, to his dateArr assignment (note) is mutable array.

For example: NSMutableArray * menus = @ [
              @ [@ "recommended" @ "hot spots", @ "hangzhou" @ "society," @ "entertainment," @ "science and technology," @ "cars," @ "sports," @ "subscribe", @ "financial"]. MutableCopy,
              @ [@ "movie," @ "digital" @ "fashion," @ "exotic," @ "game," @ "tourism," @ "parenting," @ "to lose weight," @ "keeping in good health," @ "gourmet"]. MutableCopy
          ]. MutableCopy;

        XWMenuViewController * XWMenuVc = [[XWMenuViewController alloc] init].
        XWMenuVc. DateArr = menus;
 
 
<img src="https://github.com/kSimpleCoder/XWMenuPicker/blob/master/border.PNG" width = "320" alt="带边框" align=center />
<img src="https://github.com/kSimpleCoder/XWMenuPicker/blob/master/circleborder.PNG" width = "320" alt="带圆角带边框" align=center />
<img src="https://github.com/kSimpleCoder/XWMenuPicker/blob/master/noborder.PNG" width = "320" alt="无圆角无边框" align=center />


菜单选择器有两个分区：选择分区和未选择分区,我们可以随意改变两个分区里面的频道，单击一次分区里面的频道，
这个频道就会进入另一个分区。我们也可以通过长按事件，如果在分区内移动频道，可以改变频道的排列顺序，如果
跨分区移动，可以将频道拖到另一个分区并且进行重排。

## 使用介绍
使用时将XWMenuPicker拖到工程里面，引入“XWMenuViewController.h”头文件，将他的dateArr赋值即可（注意是可变数组）。
例如：    
    ```
      NSMutableArray *menus = @[
                 @[@"推荐",@"热点",@"杭州",@"社会",@"娱乐",@"科技",@"汽车",@"体育",@"订阅",@"财经"].mutableCopy,
                 @[@"电影",@"数码",@"时尚",@"奇葩",@"游戏",@"旅游",@"育儿",@"减肥",@"养生",@"美食"].mutableCopy
                 ].mutableCopy;
          
      XWMenuViewController *XWMenuVc = [[XWMenuViewController alloc] init];
      XWMenuVc.dateArr = menus;
    
    ```
