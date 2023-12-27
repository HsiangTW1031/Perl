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











// --------------------------------references---------------------------- //
RUNOOB.COM :
https://www.runoob.com/perl/perl-tutorial.html

維基百科-Perl : 
https://zh.wikipedia.org/zh-tw/Perl

Perl程式設計教學:基本觀念 :
https://opensourcedoc.com/perl-programming/basic/