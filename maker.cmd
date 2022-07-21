echo MtF-Boyfriend by VinF > result.txt
echo: >> result.txt
echo: >> result.txt
set vol=1
:volumemk
echo: >> result.txt
echo: >> result.txt
echo: >> result.txt
copy /b result.txt+".\main\%vol%\info.txt" result.txt
echo: >> result.txt
echo: >> result.txt
echo: >> result.txt
for %%a in (.\main\%vol%\???.txt) do copy /b result.txt+%%a result.txt&&echo: >> result.txt&&echo: >> result.txt
set /a vol+=1
if %vol% == 5 goto extra2mk
goto volumemk
:extra2mk
set vol=1
:extramk
echo: >> result.txt
echo: >> result.txt
echo: >> result.txt
copy /b result.txt+".\extra\%vol%\info.txt" result.txt
echo: >> result.txt
echo: >> result.txt
echo: >> result.txt
for %%a in (.\extra\%vol%\???.txt) do copy /b result.txt+%%a result.txt&&echo: >> result.txt&&echo: >> result.txt
set /a vol+=1
if %vol% == 5 goto branchmk
goto extramk
:branchmk
echo: >> result.txt
echo: >> result.txt
echo: >> result.txt
copy /b result.txt+".\other\info.txt" result.txt
echo: >> result.txt
echo: >> result.txt
echo: >> result.txt
for %%a in (.\other\???.txt) do copy /b result.txt+%%a result.txt&&echo: >> result.txt&&echo: >> result.txt
echo: >> result.txt
echo: >> result.txt
echo: >> result.txt
copy /b result.txt+".\reader\info.txt" result.txt
echo: >> result.txt
echo: >> result.txt
echo: >> result.txt
for %%a in (.\reader\???.txt) do copy /b result.txt+%%a result.txt&&echo: >> result.txt&&echo: >> result.txt