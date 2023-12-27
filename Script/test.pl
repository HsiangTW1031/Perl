#!/usr/bin/perl

use strict;     # 強制執行一些編碼標準
use warnings;   # 提供了更多關於潛在問題的訊息

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