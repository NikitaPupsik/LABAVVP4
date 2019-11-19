

str1='Алексеев Сергей 1980 5 4 4 5 3 5'
str2='0.1 0.2 0.3 9.91';
str3='1.9 0.4 0.1 8.01';
str4='4.7 5.1 3.9 7.16';

%задание 1
netprobel=length(strrep(str1,' ',''))

%задание 2
space=findstr(' ',str1);
str1NEWe=[str1(space(end)+1:end), str1(space(1):space(end)),str1(1:space(1)-1)]


%задание 3
str1novya = strrep(str1, '1980', 'тысяча девятьсот восемьдесят');
str1novya = strrep(str1novya, '5', 'пять');
str1novya = strrep(str1novya, '4', 'четыре');
str1novya = strrep(str1novya, '4', 'четыре');
str1novya = strrep(str1novya, '5', 'пять');
str1novya = strrep(str1novya, '3', 'три');
str1novya = strrep(str1novya, '5', 'пять');

%задание 4
obratno=regexp(str1,' ','split');
numstr1=[];
for i=1:length(obratno)
numstr1 = [numstr1, str2num(obratno{i})];
end
numstr1

%задание 5
var1=fopen('var1.txt','w+');
fprintf(var1, [str1,'\n']);
fprintf(var1, [str2,'\n']);
fprintf(var1, [str3,'\n']);
fprintf(var1, [str4,'\n']);

%задание 6


%задание 7
close all
FileHtml=fopen(['lab4_1.html'],'wt');
fprintf(FileHtml,['<HTML>\n']);
fprintf(FileHtml,['<head>\n']);
fprintf(FileHtml,['<title> Отчет по лабораторной работе \n']);
fprintf(FileHtml,['</title>\n']);
fprintf(FileHtml,['<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows">\n']);
fprintf(FileHtml,['</head>\n']);
fprintf(FileHtml,['<body>\n']);
fprintf(FileHtml,['<center><H3>ОТЧЕТ<br>по лабораторной работе</h3></center>\n']);
fprintf(FileHtml,['<h3>Вычисления завершены</h3>\n']);
fprintf(FileHtml,'%s\n', ['Задание №1', num2str(netprobel)]);
fprintf(FileHtml,'%s\n', ['Задание №2', num2str(str1novya)]);
fprintf(FileHtml,'%s\n', ['Задание №3', num2str(str1novya)]);

h1=figure('Name', 'График');
hold on
x=1:0.1:5;
y=sin(x);
plot(x,y);
hold off
var1=['var1.jpg'];
saveas(h1,var1);


fprintf(FileHtml,['<h3> Графики </h3>\n']);
fprintf(FileHtml,['<a href="' var1 '">']);
fprintf(FileHtml,['<img src="' var1 '" height="' 200 '" >' '\n']);
fprintf(FileHtml,['</a>\n']);
fprintf(FileHtml,['</body>\n']);
fprintf(FileHtml,['</HTML>\n']);
fclose(FileHtml);