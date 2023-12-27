/ ********************************************************************** /
/ 								                                         /
/ 			              Perl Script Information                        /
/								                                         /
/    Editor : Levi Wu 	Date : 2023.12.27                                /
/    Perl Version : This is perl 5, version 30, subversion 0 (5.30.0)    /
/    (with 60 registered patches, see perl -v for more detail)           /
/ ********************************************************************** /


// -----------------------------概述------------------------------------ //
Perl 是 Practical Extraction and Report Language 的縮寫，可翻譯為 "實用報表提取語言"。
Perl 是高級、通用、直譯式動態的程式語言。
Perl 最初的設計者為拉里·沃爾（Larry Wall），於1987年12月18日發表。
Perl 借用了C、sed、awk、shell腳本以及很多其他編程语言的特性。
Perl 最重要的特性是Perl内部集成了正則表達式的功能，以及巨大的第三方代碼庫CPAN。
Perl 語言應用廣泛，涵蓋CGI、圖形編程、系統管理、網路編程、金融、生物等領域。

// -------------------------Perl 數據類型------------------------------- //
※ 定義類型
# Perl 有三個基本的數據類型：純量、陣列、關聯陣列。以下是這三種數據類型的說明：
1. Scalar: 純量(Scalar，以$字元開頭)，簡單來說就是單一個變數，
Perl是一種無類型語言(untyped)，所以變數不需要指定類型，
換句話說，就是不把變數分成整數、字元、浮點數等等，Perl解釋器會根據上下文自動選擇匹配類型。
ex: $a=5; $b="Hello"; $c=3.2; $d='\n這裡不換行'; 以上都是合法的Perl語句。

2. Array: 陣列(Array，用@字元開頭)，陣列可以內含任意可變數目的變數，並以其儲存順序作為索引以完成常數時間的定位
ex： @arr=(1,2,3); @ages = (25, 30, 40); @names = ("meats", "fishs", "vegetables");

3. Hash: 關聯陣列(Associative array，或者稱為Hash，用%開頭)，可以在變數之間建立一一對映，就像字典一樣，
把不同的變數按照他們的邏輯關係組織起來，並以作為「鍵」的變數進行索引，完成常數時間的定位，
如果要訪問Hash，可以使用 $ + {key} 格式來訪問。
ex： %hash=('a'=>1,'b'=>2); %data = ('meats', 45, 'fishs', 30, 'vegetables', 40);

※ 變數類型
1. 整數
# 8 進制和 16 進制：8 進制以 0 開始，16 進制以 0x 開始
ex: $var1 = 047;    # 等於十進制的39
ex: $var2 = 0x1f;   # 等於十進制的31

2. 符點數
# 浮點暫存器通常不能精卻地儲存浮點數，從而產生誤差，在運算和比較中要特别注意。
# 指數的範圍通常為 -309 到 +308。
ex: $value = 11.4;
ex: $value = -0.3;
ex: $value = .3;
ex: $value = 3.;
ex: $value = 54.1e+02;
ex: $value = 5.41e03;


3. 字串
# Perl 中的字串使用一個變量来表示，定義方式和 c 很像，但是在 Perl 裡面字串不是用 \0 來表示結束的。
# Perl 雙引號和單引號的區别: 雙引號可以正常解析一些轉義字符與變量，而單引號無法解析，會原樣輸出。
ex:
$str1="這是一個使用\n多行字串的例子\n";
$str2='這是一個使用\n多行字串的例子';
print($str1);
print($str2);

執行結果:
這是一個使用
多行字串的例子
這是一個使用\n多行字串的例子

※ 變數額外補充
@names = ('badminton', 'baseball', 'basketball');

@copy = @array;   # 複製陣列
$size = @array;   # 陣列赋值给單一變數，會返回陣列個數

print "陣列為 : @copy\n";
print "陣列數為 : $size\n";

執行結果:
陣列為 : : badminton baseball basketball
陣列數為 : 3

// ----------------------------Perl 流程控制---------------------------- //
※ 條件語句

# if 語句語法格式：
if(boolean_expression){
   # boolean_expression 為 true 執行
}

# if-else 語句語法格式：
if(boolean_expression){
   # boolean_expression 為 true 執行
}else{
   # boolean_expression 為 false 執行
}

# if elsif else 語句語法格式：
if(boolean_expression 1){
   # boolean_expression 1 為 true 執行
}
elsif( boolean_expression 2){
   # boolean_expression 2 為 true 執行
}
elsif( boolean_expression 3){
   # boolean_expression 3 為 true 執行
}
else{
   #  boolean_expression  都為 false 時執行
}

# unless 語句語法格式：
unless(boolean_expression){
   # boolean_expression 為 false 執行
}

# unless-else 語句語法格式：
unless(boolean_expression){
   # boolean_expression 為 false 執行
}else{
   # boolean_expression 為 true 執行
}

# unless elsif else statment 語句語法格式：
unless(boolean_expression 1){
   # boolean_expression 1 為 false 執行
}
elsif( boolean_expression 2){
   # boolean_expression 2 為 true 執行
}
elsif( boolean_expression 3){
   # boolean_expression 3 為 true 執行
}
else{
   #  都沒有以上條件匹配時執行
}

※ 三元運算符 ? :
Exp1 ? Exp2 : Exp3;

// ----------------------------Perl Loop---------------------------- //
※ while loop
當给定條件為 true 時，重複執行語句或語句組合。
while(condition)
{
   statement(s);
}

※ until loop
重複執行語句或語句組合，直到给定條件為 true。
until(condition)
{
   statement(s);
}

※ for loop
多次執行一个語句序列，簡化管理循環變量的code。
for(init; condition; increment)
{
   statement(s);
}

※ foreach loop
Perl foreach loop 用於迭代一个列表或集合變量的值。
foreach var (list) {
...
}

※ do...while
語 while loop類似，但是 do...while loop會確保至少執行一次loop。
do
{
   statement(s);
}while( condition );

// ------------------------------Perl 函數------------------------------ //
※ 函數定義
# Perl 子程式即執行一個特殊任務的一段分離的代碼，它可以使减少重複代碼且使程式易讀。
# Perl 子程式可以出現在程式的任何地方，與 C 語言的function是一樣的功能。
ex: sub subroutine{
    statements;
}

※ 向子程式傳遞參數
# Perl 子程式可以和其他語言一樣接受多個參數，子程式參數使用特殊陣列 @_ 標明。
# 因此子程式第一個參數為 $_[0], 第二個參數為 $_[1], 以此類推。
# 不論參數是單個變量還是陣列，用户把參數傳給子程式時，perl默認按引用的方式調用它們。

※ 向子程式傳遞array
# 由於 @_ 變量是一個array，所以它可以向子程式中傳遞array。
# 但如果我们需要傳入單個變量和arrat參數時，需要把array放在最後一個參數上。

※ 向子程式傳遞Hash
# 當向子程式傳遞Hash table時，它將複製到 @_ 中，hash table表將被展開為 key/value 组合的列表。

※ 子程式返回值
# 子程式可以向其他语言一樣使用 return 語句来返回函數值。
# 如果没有使用 return 語句，則子程式的最後一行語句將作為返回值。

※ 子程式私有變量
# 默認情况下，Perl 中所有的變量都是全局變量，這就是說變量量在程式的任何地方都可以調用。
# 如果我们需要設置私有變量，可以使用 my 操作符来設置。
# my 操作符用於創建局域變量，通過 my 創建的邊量，存在於宣告在各域一開始的地方，直到作用域的結束。

※ 靜態變量
# state操作符功能類似於 C 裡面的static修飾符，state關鍵字將局部變量變得持久。
# state也是一種宣告變量，跟 my 一樣，所以只在定義該變量的作用域中有效。

// --------------------------Perl 時間日期內建函數------------------------ //
1. time() 函数：返回從1970年1月1日起累計的秒數
2. localtime() 函数：獲取本地時區時間
3. gmtime() 函数： 獲取格林威治時間

// ------------------------------Perl 引用------------------------------ //




// --------------------------------references---------------------------- //
RUNOOB.COM :
https://www.runoob.com/perl/perl-tutorial.html

維基百科-Perl : 
https://zh.wikipedia.org/zh-tw/Perl

Perl程式設計教學:基本觀念 :
https://opensourcedoc.com/perl-programming/basic/