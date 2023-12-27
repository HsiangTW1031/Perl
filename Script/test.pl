#!/usr/bin/perl

use strict;     # 強制執行一些編碼標準
use warnings;   # 提供了更多關於潛在問題的訊息
use POSIX qw(strftime); #函数 strftime() 可以將時間格式化為我们想要的格式

my $undefined_variable; # 未初始化的變量
print $undefined_variable; # 如果undefined_variable未初始化，這裡會產生一個警告(前提是有使用`use warnings;`)

print "Hello World!\n";

# 打開文件
my $filename = 'BBC_news.txt';
open my $file, '<', $filename or die "Can't open '$filename': $!";

# 行數計數器
my $line_number = 1;

# 逐行讀取文件內容
while(my $line = <$file>){
    chomp($line);   # 移除行尾的換行符

    # 計算單字數量
    my @words = split(/\s+/,$line);
    my $word_count = scalar @words;

    # 輸出行數和單字數量
    print "Line $line_number: $word_count words\n";

    $line_number++;
}

# 關閉文件
close $file;

# -------------------------------------------------------------------- #
# --------------------------- Perl 流程控制---------------------------- #
# -------------------------------------------------------------------- #
# 創建一個陣列
my @numbers = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

# 使用loop和條件語句輸出偶數元素
foreach my $num (@numbers) {
    if ($num % 2 == 0) {
        print "$num is even\n";
    } else {
        print "$num is odd\n";
    }
}

# -------------------------------------------------------------------- #
# ----------------------- Perl 時間日期內建函數------------------------- #
# -------------------------------------------------------------------- #
# 創建當前時間和日期
my $seconds = time();
my $local_datatime = localtime();
my $gmt_datatime = gmtime();
print "1970年1月1日起累計的秒數為 : $seconds\n";
print "本地時間日期為 : $local_datatime\n";
print "GMT時間日期為 : $gmt_datatime\n";


#  POSIX 函数 strftime()
#  本地 格式化時間日期
my $local_datestring = strftime "%Y-%m-%d %H:%M:%S", localtime;
printf("時間日期 - $local_datestring\n");
 
#  GMT 格式化時間日期
my $gmt_datestring = strftime "%Y-%m-%d %H:%M:%S", gmtime;
printf("時間日期 - $gmt_datestring\n");

# -------------------------------------------------------------------- #
# ---------------------------- Perl 函數 ------------------------------ #
# -------------------------------------------------------------------- #
# 函数定義
sub Hello{
   print "Hello, World!\n";
}
 
# 函數調用
Hello();

# 定義求平均值函数
sub Average{
   # 獲取所有傳入的參數
   my $n = scalar(@_);
   my $sum = 0;
 
   foreach my $item (@_){
      $sum += $item;
   }
   my $average = $sum / $n;
   print '傳入的參數為 : ',"@_\n";           # print整個array
   print "第一個參數值為 : $_[0]\n";         # print第一個參數
   print "傳入參數的平均值為 : $average\n";  # print平均值
}
 
# 調用函数
Average(10, 20, 30);

# 定義函数
sub PrintList{
   my @list = @_;
   print "列表為 : @list\n";
}
my $a = 10;
my @b = (1, 2, 3, 4);
 
# 列表參數
PrintList($a, @b);

# 方法定義
sub PrintHash{
   my (%hash) = @_;
 
   foreach my $key ( keys %hash ){
      my $value = $hash{$key};
      print "$key : $value\n";
   }
}my %hash = ('name' => 'Levi', 'age' => 27);
 
# 傳遞hash table
PrintHash(%hash);

# 方法定義
sub add_a_b{
   # 不使用 return
   $_[0]+$_[1];  
 
   # 使用 return
   # return $_[0]+$_[1];  
}
print add_a_b(1, 2)
