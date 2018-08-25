# bash-SGR-color-demo
Demonstrate how to use bash script to print SGR to change terminal display colors  
Usage: ```./color.bash``` 

If your are not able to run the script on Termux on Android, try run ```termux-fix-shebang color.bash``` before using the script.  
[SGR](https://en.wikipedia.org/wiki/ANSI_escape_code#SGR_(Select_Graphic_Rendition)_parameters) is ANSI escape sequences to change terminal display colors, visit
[Wikipedia](https://en.wikipedia.org/wiki/ANSI_escape_code#Colors) for more info about it.  
Running result of the script on Termux:![Running result of the script on Termux](Screenshots/outputOnTermux.png)  
Entering hex code in bash to change terminal color is also possible, e.g.  
```printf '\e[48;2;'$((0xff))';0;0m'' '```  
and  
```printf '\e[48;2;''255'';0;0m'' '```  
are the same.  
![Printing SGR on terminal](Screenshots/hexBash.png)
Type /\\$' in ```man bash``` for more info.
![search for the shell feature in manpage of bash](Screenshots/searchInManBash.png)
