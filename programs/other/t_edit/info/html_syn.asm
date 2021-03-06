macro wo txt,lf1,p1,p2,p3{
@@: db txt
rb @b+40-$
dd lf1
db p1
dw p2+0
db p3
}
count_colors_text dd (text-color_wnd_text)/4
count_key_words dd (f1-text)/48
color_cursor dd 0xffd000
color_wnd_capt dd 0x008080
color_wnd_work dd 0xffffff
color_wnd_bord dd 0x00ff00
color_select dd 0x808080
color_cur_text dd 0x808080
color_wnd_text:
	dd 0x000000
	dd 0xff80c0
	dd 0x0000ff
	dd 0xff0080
	dd 0xc0c0c0
	dd 0xff8040
	dd 0x80d0d0
text:
wo<'А'>,f1.1-f1,0,,5
wo<'З'>,f1.2-f1,0,,5
wo<'М'>,f1.3-f1,0,,5
wo<'О'>,f1.4-f1,0,,5
wo<'С'>,f1.5-f1,0,,5
wo<'Ф'>,f1.6-f1,0,,5
wo<'а'>,f1.7-f1,0,,5
wo<'б'>,f1.8-f1,0,,5
wo<'в'>,f1.9-f1,0,,5
wo<'г'>,f1.10-f1,0,,5
wo<'д'>,f1.11-f1,0,,5
wo<'е'>,f1.12-f1,0,,5
wo<'з'>,f1.13-f1,0,,5
wo<'и'>,f1.14-f1,0,,5
wo<'й'>,f1.15-f1,0,,5
wo<'к'>,f1.16-f1,0,,5
wo<'л'>,f1.17-f1,0,,5
wo<'м'>,f1.18-f1,0,,5
wo<'н'>,f1.19-f1,0,,5
wo<'о'>,f1.20-f1,0,,5
wo<'п'>,f1.21-f1,0,,5
wo<'р'>,f1.22-f1,0,,5
wo<'с'>,f1.23-f1,0,,5
wo<'т'>,f1.24-f1,0,,5
wo<'у'>,f1.25-f1,0,,5
wo<'х'>,f1.26-f1,0,,5
wo<'ц'>,f1.27-f1,0,,5
wo<'ч'>,f1.28-f1,0,,5
wo<'ы'>,f1.29-f1,0,,5
wo<'ь'>,f1.30-f1,0,,5
wo<'э'>,f1.31-f1,0,,5
wo<'я'>,f1.32-f1,0,,5
wo<'ё'>,f1.33-f1,0,,5
wo<'"'>,0,4,34,1
wo<'&#96;'>,f1.35-f1,0,,3
wo<'&AElig;'>,f1.36-f1,0,,3
wo<'&Aacute;'>,f1.37-f1,0,,3
wo<'&Acirc;'>,f1.38-f1,0,,3
wo<'&Agrave;'>,f1.39-f1,0,,3
wo<'&Alpha;'>,f1.40-f1,0,,3
wo<'&Aring;'>,f1.41-f1,0,,3
wo<'&Atilde;'>,f1.42-f1,0,,3
wo<'&Auml;'>,f1.43-f1,0,,3
wo<'&Beta;'>,f1.44-f1,0,,3
wo<'&Ccedil;'>,f1.45-f1,0,,3
wo<'&Chi;'>,f1.46-f1,0,,3
wo<'&Dagger;'>,f1.47-f1,0,,3
wo<'&Delta;'>,f1.48-f1,0,,3
wo<'&ETH;'>,f1.49-f1,0,,3
wo<'&Eacute;'>,f1.50-f1,0,,3
wo<'&Ecirc;'>,f1.51-f1,0,,3
wo<'&Egrave;'>,f1.52-f1,0,,3
wo<'&Epsilon;'>,f1.53-f1,0,,3
wo<'&Eta;'>,f1.54-f1,0,,3
wo<'&Euml;'>,f1.55-f1,0,,3
wo<'&Gamma;'>,f1.56-f1,0,,3
wo<'&Iacute;'>,f1.57-f1,0,,3
wo<'&Icirc;'>,f1.58-f1,0,,3
wo<'&Igrave;'>,f1.59-f1,0,,3
wo<'&Iota;'>,f1.60-f1,0,,3
wo<'&Iuml;'>,f1.61-f1,0,,3
wo<'&Kappa;'>,f1.62-f1,0,,3
wo<'&Lambda;'>,f1.63-f1,0,,3
wo<'&Mu;'>,f1.64-f1,0,,3
wo<'&Ntilde;'>,f1.65-f1,0,,3
wo<'&Nu;'>,f1.66-f1,0,,3
wo<'&OElig;'>,f1.67-f1,0,,3
wo<'&Oacute;'>,f1.68-f1,0,,3
wo<'&Ocirc;'>,f1.69-f1,0,,3
wo<'&Ograve;'>,f1.70-f1,0,,3
wo<'&Omega;'>,f1.71-f1,0,,3
wo<'&Omicron;'>,f1.72-f1,0,,3
wo<'&Oslash;'>,f1.73-f1,0,,3
wo<'&Otilde;'>,f1.74-f1,0,,3
wo<'&Ouml;'>,f1.75-f1,0,,3
wo<'&Phi;'>,f1.76-f1,0,,3
wo<'&Pi;'>,f1.77-f1,0,,3
wo<'&Prime;'>,f1.78-f1,0,,3
wo<'&Psi;'>,f1.79-f1,0,,3
wo<'&Rho;'>,f1.80-f1,0,,3
wo<'&Scaron;'>,f1.81-f1,0,,3
wo<'&Sigma;'>,f1.82-f1,0,,3
wo<'&THORN;'>,f1.83-f1,0,,3
wo<'&Tau;'>,f1.84-f1,0,,3
wo<'&Theta;'>,f1.85-f1,0,,3
wo<'&Uacute;'>,f1.86-f1,0,,3
wo<'&Ucirc;'>,f1.87-f1,0,,3
wo<'&Ugrave;'>,f1.88-f1,0,,3
wo<'&Upsilon;'>,f1.89-f1,0,,3
wo<'&Uuml;'>,f1.90-f1,0,,3
wo<'&Xi;'>,f1.91-f1,0,,3
wo<'&Yacute;'>,f1.92-f1,0,,3
wo<'&Yuml;'>,f1.93-f1,0,,3
wo<'&Zeta;'>,f1.94-f1,0,,3
wo<'&aacute;'>,f1.95-f1,0,,3
wo<'&acirc;'>,f1.96-f1,0,,3
wo<'&acute;'>,f1.97-f1,0,,3
wo<'&aelig;'>,f1.98-f1,0,,3
wo<'&agrave;'>,f1.99-f1,0,,3
wo<'&alefsym;'>,f1.100-f1,0,,3
wo<'&alpha;'>,f1.101-f1,0,,3
wo<'&amp;'>,f1.102-f1,0,,3
wo<'&and;'>,f1.103-f1,0,,3
wo<'&ang;'>,f1.104-f1,0,,3
wo<'&aring;'>,f1.105-f1,0,,3
wo<'&asymp;'>,f1.106-f1,0,,3
wo<'&atilde;'>,f1.107-f1,0,,3
wo<'&auml;'>,f1.108-f1,0,,3
wo<'&bdquo;'>,f1.109-f1,0,,3
wo<'&beta;'>,f1.110-f1,0,,3
wo<'&brvbar;'>,f1.111-f1,0,,3
wo<'&bull;'>,f1.112-f1,0,,3
wo<'&cap;'>,f1.113-f1,0,,3
wo<'&ccedil;'>,f1.114-f1,0,,3
wo<'&cedil;'>,f1.115-f1,0,,3
wo<'&cent;'>,f1.116-f1,0,,3
wo<'&chi;'>,f1.117-f1,0,,3
wo<'&circ;'>,f1.118-f1,0,,3
wo<'&clubs;'>,f1.119-f1,0,,3
wo<'&cong;'>,f1.120-f1,0,,3
wo<'&copy;'>,f1.121-f1,0,,3
wo<'&crarr;'>,f1.122-f1,0,,3
wo<'&cup;'>,f1.123-f1,0,,3
wo<'&curren;'>,f1.124-f1,0,,3
wo<'&dArr;'>,f1.125-f1,0,,3
wo<'&dagger;'>,f1.126-f1,0,,3
wo<'&darr;'>,f1.127-f1,0,,3
wo<'&deg;'>,f1.128-f1,0,,3
wo<'&delta;'>,f1.129-f1,0,,3
wo<'&diams;'>,f1.130-f1,0,,3
wo<'&divide;'>,f1.131-f1,0,,3
wo<'&eacute;'>,f1.132-f1,0,,3
wo<'&ecirc;'>,f1.133-f1,0,,3
wo<'&egrave;'>,f1.134-f1,0,,3
wo<'&empty;'>,f1.135-f1,0,,3
wo<'&emsp;'>,f1.136-f1,0,,3
wo<'&ensp;'>,f1.137-f1,0,,3
wo<'&epsilon;'>,f1.138-f1,0,,3
wo<'&equiv;'>,f1.139-f1,0,,3
wo<'&eta;'>,f1.140-f1,0,,3
wo<'&eth;'>,f1.141-f1,0,,3
wo<'&euml;'>,f1.142-f1,0,,3
wo<'&euro;'>,f1.143-f1,0,,3
wo<'&exist;'>,f1.144-f1,0,,3
wo<'&fnof;'>,f1.145-f1,0,,3
wo<'&forall;'>,f1.146-f1,0,,3
wo<'&frac12;'>,f1.147-f1,0,,3
wo<'&frac14;'>,f1.148-f1,0,,3
wo<'&frac34;'>,f1.149-f1,0,,3
wo<'&frasl;'>,f1.150-f1,0,,3
wo<'&gamma;'>,f1.151-f1,0,,3
wo<'&ge;'>,f1.152-f1,0,,3
wo<'&gt;'>,f1.153-f1,0,,3
wo<'&hArr;'>,f1.154-f1,0,,3
wo<'&harr;'>,f1.155-f1,0,,3
wo<'&hearts;'>,f1.156-f1,0,,3
wo<'&hellip;'>,f1.157-f1,0,,3
wo<'&iacute;'>,f1.158-f1,0,,3
wo<'&icirc;'>,f1.159-f1,0,,3
wo<'&iexcl;'>,f1.160-f1,0,,3
wo<'&igrave;'>,f1.161-f1,0,,3
wo<'&image;'>,f1.162-f1,0,,3
wo<'&infin;'>,f1.163-f1,0,,3
wo<'&int;'>,f1.164-f1,0,,3
wo<'&iota;'>,f1.165-f1,0,,3
wo<'&iquest;'>,f1.166-f1,0,,3
wo<'&isin;'>,f1.167-f1,0,,3
wo<'&iuml;'>,f1.168-f1,0,,3
wo<'&kappa;'>,f1.169-f1,0,,3
wo<'&lArr;'>,f1.170-f1,0,,3
wo<'&lambda;'>,f1.171-f1,0,,3
wo<'&lang;'>,f1.172-f1,0,,3
wo<'&laquo;'>,f1.173-f1,0,,3
wo<'&larr;'>,f1.174-f1,0,,3
wo<'&lceil;'>,f1.175-f1,0,,3
wo<'&ldquo;'>,f1.176-f1,0,,3
wo<'&le;'>,f1.177-f1,0,,3
wo<'&lfloor;'>,f1.178-f1,0,,3
wo<'&lowast;'>,f1.179-f1,0,,3
wo<'&loz;'>,f1.180-f1,0,,3
wo<'&lrm;'>,f1.181-f1,0,,3
wo<'&lsaquo;'>,f1.182-f1,0,,3
wo<'&lsquo;'>,f1.183-f1,0,,3
wo<'&lt;'>,f1.184-f1,0,,3
wo<'&macr;'>,f1.185-f1,0,,3
wo<'&mdash;'>,f1.186-f1,0,,3
wo<'&micro;'>,f1.187-f1,0,,3
wo<'&middot;'>,f1.188-f1,0,,3
wo<'&minus;'>,f1.189-f1,0,,3
wo<'&mu;'>,f1.190-f1,0,,3
wo<'&nabla;'>,f1.191-f1,0,,3
wo<'&nbsp;'>,f1.192-f1,0,,3
wo<'&ndash;'>,f1.193-f1,0,,3
wo<'&ne;'>,f1.194-f1,0,,3
wo<'&ni;'>,f1.195-f1,0,,3
wo<'&not;'>,f1.196-f1,0,,3
wo<'&notin;'>,f1.197-f1,0,,3
wo<'&nsub;'>,f1.198-f1,0,,3
wo<'&ntilde;'>,f1.199-f1,0,,3
wo<'&nu;'>,f1.200-f1,0,,3
wo<'&oacute;'>,f1.201-f1,0,,3
wo<'&ocirc;'>,f1.202-f1,0,,3
wo<'&oelig;'>,f1.203-f1,0,,3
wo<'&ograve;'>,f1.204-f1,0,,3
wo<'&oline;'>,f1.205-f1,0,,3
wo<'&omega;'>,f1.206-f1,0,,3
wo<'&omicron;'>,f1.207-f1,0,,3
wo<'&oplus;'>,f1.208-f1,0,,3
wo<'&or;'>,f1.209-f1,0,,3
wo<'&ordf;'>,f1.210-f1,0,,3
wo<'&ordm;'>,f1.211-f1,0,,3
wo<'&oslash;'>,f1.212-f1,0,,3
wo<'&otilde;'>,f1.213-f1,0,,3
wo<'&otimes;'>,f1.214-f1,0,,3
wo<'&ouml;'>,f1.215-f1,0,,3
wo<'&para;'>,f1.216-f1,0,,3
wo<'&part;'>,f1.217-f1,0,,3
wo<'&permil;'>,f1.218-f1,0,,3
wo<'&perp;'>,f1.219-f1,0,,3
wo<'&phi;'>,f1.220-f1,0,,3
wo<'&pi;'>,f1.221-f1,0,,3
wo<'&piv;'>,f1.222-f1,0,,3
wo<'&plusmn;'>,f1.223-f1,0,,3
wo<'&pound;'>,f1.224-f1,0,,3
wo<'&prime;'>,f1.225-f1,0,,3
wo<'&prod;'>,f1.226-f1,0,,3
wo<'&prop;'>,f1.227-f1,0,,3
wo<'&psi;'>,f1.228-f1,0,,3
wo<'&quot;'>,f1.229-f1,0,,3
wo<'&rArr;'>,f1.230-f1,0,,3
wo<'&radic;'>,f1.231-f1,0,,3
wo<'&rang;'>,f1.232-f1,0,,3
wo<'&raquo;'>,f1.233-f1,0,,3
wo<'&rarr;'>,f1.234-f1,0,,3
wo<'&rceil;'>,f1.235-f1,0,,3
wo<'&rdquo;'>,f1.236-f1,0,,3
wo<'&real;'>,f1.237-f1,0,,3
wo<'&reg;'>,f1.238-f1,0,,3
wo<'&rfloor;'>,f1.239-f1,0,,3
wo<'&rho;'>,f1.240-f1,0,,3
wo<'&rlm;'>,f1.241-f1,0,,3
wo<'&rsaquo;'>,f1.242-f1,0,,3
wo<'&rsquo;'>,f1.243-f1,0,,3
wo<'&sbquo;'>,f1.244-f1,0,,3
wo<'&scaron;'>,f1.245-f1,0,,3
wo<'&sdot;'>,f1.246-f1,0,,3
wo<'&sect;'>,f1.247-f1,0,,3
wo<'&shy;'>,f1.248-f1,0,,3
wo<'&sigma;'>,f1.249-f1,0,,3
wo<'&sigmaf;'>,f1.250-f1,0,,3
wo<'&sim;'>,f1.251-f1,0,,3
wo<'&spades;'>,f1.252-f1,0,,3
wo<'&sub;'>,f1.253-f1,0,,3
wo<'&sube;'>,f1.254-f1,0,,3
wo<'&sum;'>,f1.255-f1,0,,3
wo<'&sup1;'>,f1.256-f1,0,,3
wo<'&sup2;'>,f1.257-f1,0,,3
wo<'&sup3;'>,f1.258-f1,0,,3
wo<'&sup;'>,f1.259-f1,0,,3
wo<'&supe;'>,f1.260-f1,0,,3
wo<'&szlig;'>,f1.261-f1,0,,3
wo<'&tau;'>,f1.262-f1,0,,3
wo<'&there4;'>,f1.263-f1,0,,3
wo<'&theta;'>,f1.264-f1,0,,3
wo<'&thetasym;'>,f1.265-f1,0,,3
wo<'&thinsp;'>,f1.266-f1,0,,3
wo<'&thorn;'>,f1.267-f1,0,,3
wo<'&tilde;'>,f1.268-f1,0,,3
wo<'&times;'>,f1.269-f1,0,,3
wo<'&trade;'>,f1.270-f1,0,,3
wo<'&uArr;'>,f1.271-f1,0,,3
wo<'&uacute;'>,f1.272-f1,0,,3
wo<'&uarr;'>,f1.273-f1,0,,3
wo<'&ucirc;'>,f1.274-f1,0,,3
wo<'&ugrave;'>,f1.275-f1,0,,3
wo<'&uml;'>,f1.276-f1,0,,3
wo<'&upsih;'>,f1.277-f1,0,,3
wo<'&upsilon;'>,f1.278-f1,0,,3
wo<'&uuml;'>,f1.279-f1,0,,3
wo<'&weierp;'>,f1.280-f1,0,,3
wo<'&xi;'>,f1.281-f1,0,,3
wo<'&yacute;'>,f1.282-f1,0,,3
wo<'&yen;'>,f1.283-f1,0,,3
wo<'&yuml;'>,f1.284-f1,0,,3
wo<'&zeta;'>,f1.285-f1,0,,3
wo<'&zwj;'>,f1.286-f1,0,,3
wo<'&zwnj;'>,f1.287-f1,0,,3
wo<'0'>,0,24,,1
wo<'1'>,0,24,,1
wo<'2'>,0,24,,1
wo<'3'>,0,24,,1
wo<'4'>,0,24,,1
wo<'5'>,0,24,,1
wo<'6'>,0,24,,1
wo<'7'>,0,24,,1
wo<'8'>,0,24,,1
wo<'9'>,0,24,,1
wo<'<'>,f1.299-f1,4,62,2
wo<'</a>'>,0,0,,6
wo<'</b>'>,0,0,,6
wo<'</body>'>,0,0,,6
wo<'</caption>'>,0,0,,6
wo<'</h1>'>,0,0,,6
wo<'</h2>'>,0,0,,6
wo<'</h3>'>,0,0,,6
wo<'</h4>'>,0,0,,6
wo<'</h5>'>,0,0,,6
wo<'</h6>'>,0,0,,6
wo<'</h7>'>,0,0,,6
wo<'</head>'>,0,0,,6
wo<'</html>'>,0,0,,6
wo<'</i>'>,0,0,,6
wo<'</li>'>,0,0,,6
wo<'</nobr>'>,0,0,,6
wo<'</ol>'>,0,0,,6
wo<'</p>'>,0,0,,6
wo<'</pre>'>,0,0,,6
wo<'</sub>'>,0,0,,6
wo<'</sup>'>,0,0,,6
wo<'</table>'>,0,0,,6
wo<'</tbody>'>,0,0,,6
wo<'</td>'>,0,0,,6
wo<'</th>'>,0,0,,6
wo<'</title>'>,0,0,,6
wo<'</tr>'>,0,0,,6
wo<'</u>'>,0,0,,6
wo<'</ul>'>,0,0,,6
wo<'<b>'>,f1.329-f1,0,,4
wo<'<body>'>,f1.330-f1,0,,4
wo<'<br>'>,f1.331-f1,0,,4
wo<'<caption>'>,f1.332-f1,0,,4
wo<'<h1>'>,f1.333-f1,0,,4
wo<'<h2>'>,f1.334-f1,0,,4
wo<'<h3>'>,f1.335-f1,0,,4
wo<'<h4>'>,f1.336-f1,0,,4
wo<'<h5>'>,f1.337-f1,0,,4
wo<'<h6>'>,f1.338-f1,0,,4
wo<'<h7>'>,f1.339-f1,0,,4
wo<'<head>'>,f1.340-f1,0,,4
wo<'<hr>'>,f1.341-f1,0,,4
wo<'<html>'>,f1.342-f1,0,,4
wo<'<i>'>,f1.343-f1,0,,4
wo<'<li>'>,f1.344-f1,0,,4
wo<'<nobr>'>,f1.345-f1,0,,4
wo<'<ol>'>,f1.346-f1,0,,4
wo<'<p>'>,f1.347-f1,0,,4
wo<'<pre>'>,0,0,,4
wo<'<sub>'>,f1.349-f1,0,,4
wo<'<sup>'>,f1.350-f1,0,,4
wo<'<table>'>,f1.351-f1,0,,4
wo<'<tbody>'>,f1.352-f1,0,,4
wo<'<td>'>,f1.353-f1,0,,4
wo<'<th>'>,f1.354-f1,0,,4
wo<'<title>'>,f1.355-f1,0,,4
wo<'<tr>'>,f1.356-f1,0,,4
wo<'<u>'>,f1.357-f1,0,,4
wo<'<ul>'>,f1.358-f1,0,,4
f1: db 0
.1:db '?',0
.2:db '?',0
.3:db '?',0
.4:db '?',0
.5:db '?',0
.6:db '?',0
.7:db '?',0
.8:db '?',0
.9:db '?',0
.10:db '?',0
.11:db '?',0
.12:db '?',0
.13:db '?',0
.14:db '?',0
.15:db '?',0
.16:db '?',0
.17:db '?',0
.18:db '?',0
.19:db '?',0
.20:db '?',0
.21:db '?',0
.22:db '?',0
.23:db '?',0
.24:db '?',0
.25:db '?',0
.26:db '?',0
.27:db '?',0
.28:db '?',0
.29:db '?',0
.30:db '?',0
.31:db '?',0
.32:db '?',0
.33:db '?',0
.35:db 'ᨬ??? `',0
.36:db '???????? AE',0
.37:db 'A ? ?????? 㤠७???',0
.38:db 'A ? ??????䫥?ᮬ',0
.39:db 'A ? ????? 㤠७???',0
.40:db '?ய?᭠? ?????',0
.41:db 'A ? ??㦪??',0
.42:db 'A ? ⨫줮?',0
.43:db 'A ? ???१??',0
.44:db '?ய?᭠? ????',0
.45:db 'C ? ᥤ????',0
.46:db '?ய?᭠? ??',0
.47:db '??????? ??????',0
.48:db '?ய?᭠? ??????',0
.49:db 'ETH',0
.50:db 'E ? ?????? 㤠७???',0
.51:db 'E ? ??????䫥?ᮬ',0
.52:db 'E ? ????? 㤠७???',0
.53:db '?ய?᭮? ??ᨫ??',0
.54:db '?ய?᭠? ???',0
.55:db 'E ? ???१??',0
.56:db '?ய?᭠? ?????',0
.57:db 'I ? ?????? 㤠७???',0
.58:db 'I ? ??????䫥?ᮬ',0
.59:db 'I ? ????? 㤠७???',0
.60:db '?ய?᭠? ????',0
.61:db 'I ? ???१??',0
.62:db '?ய?᭠? ?????',0
.63:db '?ய?᭠? ??????',0
.64:db '?ய?᭠? ??',0
.65:db 'N ? ⨫줮?',0
.66:db '?ய?᭠? ??',0
.67:db '???????? OE',0
.68:db 'O ? ?????? 㤠७???',0
.69:db 'O ? ??????䫥?ᮬ',0
.70:db 'O ? ????? 㤠७???',0
.71:db '?ய?᭠? ?????',0
.72:db '?ய?᭮? ????஭',0
.73:db 'O ??????ભ?⮥',0
.74:db 'O ? ⨫줮?',0
.75:db 'O ? ???१??',0
.76:db '?ய?᭠? ??',0
.77:db '?ய?᭠? ??',0
.78:db '???? ??????? ?ਬ',0
.79:db '?ய?᭠? ???',0
.80:db '?ய?᭠? ??',0
.81:db 'S ? ???窮?',0
.82:db '?ய?᭠? ᨣ??',0
.83:db 'THORN',0
.84:db '?ய?᭠? ???',0
.85:db '?ய?᭠? ????',0
.86:db 'U ? ?????? 㤠७???',0
.87:db 'U ? ??????䫥?ᮬ',0
.88:db 'U ? ????? 㤠७???',0
.89:db '?ய?᭠? ??ᨫ??',0
.90:db 'U ? ???१??',0
.91:db '?ய?᭠? ???',0
.92:db 'Y ? ?????? 㤠७???',0
.93:db 'Y ? ???१??',0
.94:db '?ய?᭠? ?????',0
.95:db 'a ? ?????? 㤠७???',0
.96:db 'a ? ??????䫥?ᮬ',0
.97:db '???஥ 㤠७??',0
.98:db '???????? ae',0
.99:db 'a ? ????? 㤠७???',0
.100:db '????',0
.101:db '????筠? ?????',0
.102:db '?????ᠭ? &',0
.103:db '??????᪮? ?',0
.104:db '㣮?',0
.105:db 'a ? ??㦪??',0
.106:db '?ᨬ???????᪨ ࠢ??',0
.107:db 'a ? ⨫줮?',0
.108:db 'a ? ???१??',0
.109:db '?????? ??????? ????窠',0
.110:db '????筠? ????',0
.111:db '???⨪??쭠? ?????',0
.112:db '??થ? ᯨ᪠ ',0
.113:db '??????祭??',0
.114:db 'c ? ᥤ????',0
.115:db 'ᥤ???',0
.116:db '業?',0
.117:db '????筠? ??',0
.118:db '??????䫥??',0
.119:db '?????',0
.120:db '?ਡ????⥫쭮 ࠢ??',0
.121:db '???? ?????᪮?? ?ࠢ?',0
.122:db '??????? ????⪨',0
.123:db '??ꥤ??????',0
.124:db '???? ???????? ??????? ?',0
.125:db '??????? ??५?? ????',0
.126:db '??????',0
.127:db '??५?? ????',0
.128:db '?ࠤ??',0
.129:db '????筠? ??????',0
.130:db '?㡭?',0
.131:db '???? ???????',0
.132:db 'e ? ?????? 㤠७???',0
.133:db 'e ? ??????䫥?ᮬ',0
.134:db 'e ? ????? 㤠७???',0
.135:db '???⮥ ??????⢮',0
.136:db '??????? ?஡??',0
.137:db '????⪨? ?஡??',0
.138:db '????筠? ??ᨫ??',0
.139:db '⮦???⢥??? ࠢ??',0
.140:db '????筠? ???',0
.141:db 'eth',0
.142:db 'e ? ???१??',0
.143:db '????',0
.144:db '??????? ?????⢮?????',0
.145:db '???ᨢ??? f',0
.146:db '??????? ?᥮?魮???',0
.147:db '?஡? ???? ??????',0
.148:db '???? ??⢥????',0
.149:db '??? ??⢥???',0
.150:db '?஡??? ?????',0
.151:db '????筠? ?????',0
.152:db '?????? ??? ࠢ??',0
.153:db 'ᨬ??? >',0
.154:db '??????? ??५?? ?????-??ࠢ?',0
.155:db '??५?? ?????-??ࠢ?',0
.156:db '?????',0
.157:db '???????稥',0
.158:db 'i ? ?????? 㤠७???',0
.159:db 'i ? ??????䫥?ᮬ',0
.160:db '??ॢ??????? ??᪫???⥫???? ????',0
.161:db 'i ? ????? 㤠७???',0
.162:db '?????? ????? ??᫠',0
.163:db '??᪮??筮???',0
.164:db '??⥣ࠫ',0
.165:db '????筠? ????',0
.166:db '??ॢ??????? ???????⥫???? ????',0
.167:db '?ਭ??????? ?????????',0
.168:db 'i ? ???१??',0
.169:db '????筠? ?????',0
.170:db '??????? ??५?? ?????',0
.171:db '????筠? ??????',0
.172:db '????? 㣫???? ᪮???',0
.173:db '????뢠???? ??????? 㣫???? ????窠',0
.174:db '??५?? ?????',0
.175:db '????? ???孨? 㣮?',0
.176:db '????뢠???? ??????? ????窠',0
.177:db '?????? ??? ࠢ??',0
.178:db '????? ?????? 㣮?',0
.179:db '???????? ??????窠',0
.180:db '஬?',0
.181:db '㪠??⥫? ᫥?? ???ࠢ?',0
.182:db '????뢠???? 㣫???? ????窠',0
.183:db '????뢠???? ?????ୠ? ????窠',0
.184:db 'ᨬ??? <',0
.185:db '?????ન?????',0
.186:db '??????? ????',0
.187:db '???? ?????',0
.188:db '?।??? ??窠',0
.189:db '???? ?????',0
.190:db '????筠? ??',0
.191:db '?????',0
.192:db '??ࠧ?뢭?? ?஡??',0
.193:db '????⪮? ????',0
.194:db '?? ࠢ??',0
.195:db '????? 童???',0
.196:db '???? ????栭??',0
.197:db '?? ?ਭ??????? ?????????',0
.198:db '?? ?????????⢮',0
.199:db 'n ? ⨫줮?',0
.200:db '????筠? ??',0
.201:db 'o ? ?????? 㤠७???',0
.202:db 'o ? ??????䫥?ᮬ',0
.203:db '???????? oe',0
.204:db 'o ? ????? 㤠७???',0
.205:db '?????ન?????',0
.206:db '????筠? ?????',0
.207:db '???????? ????஭',0
.208:db '??ﬠ? ?㬬?',0
.209:db '??????᪮? ???',0
.210:db '??????⥫? ???᪮?? த?',0
.211:db '??????⥫? ???᪮?? த?',0
.212:db 'o ??????ભ?⮥',0
.213:db 'o ? ⨫줮?',0
.214:db '?????୮? ?ந????????',0
.215:db 'o ? ???१??',0
.216:db '????? ??????',0
.217:db '???? ?????७樠??',0
.218:db '???? ?஬????',0
.219:db '??௥???????୮',0
.220:db '????筠? ??',0
.221:db '????筠? ??',0
.222:db 'ᨬ??? ??',0
.223:db '????-?????',0
.224:db '???? ???૨????',0
.225:db '???? ?ਬ',0
.226:db 'n-?୮? ?ந????????',0
.227:db '?ய??樮???쭮',0
.228:db '????筠? ???',0
.229:db '????窠 "',0
.230:db '??????? ??५?? ??ࠢ?',0
.231:db 'ࠤ????',0
.232:db '?ࠢ?? 㣫???? ᪮???',0
.233:db '????뢠???? ??????? 㣫???? ????窠',0
.234:db '??५?? ??ࠢ?',0
.235:db '?ࠢ?? ???孨? 㣮?',0
.236:db '????뢠???? ??????? ????窠',0
.237:db '????⢨⥫쭠? ????? ??᫠',0
.238:db '??࠭塞?? ????',0
.239:db '?ࠢ?? ?????? 㣮?',0
.240:db '????筠? ??',0
.241:db '㪠??⥫? ??ࠢ? ??????',0
.242:db '????뢠???? 㣫???? ????窠',0
.243:db '????뢠???? ?????ୠ? ????窠',0
.244:db '?????? ?????ୠ? ????窠',0
.245:db 's ? ???窮?',0
.246:db '???????? ??窠',0
.247:db '??ࠣ???',0
.248:db '??? ??७??',0
.249:db '????筠? ᨣ??',0
.250:db '????筠? ᨣ?? ????筠?',0
.251:db '???????? ⨫줠',0
.252:db '????',0
.253:db '?????????⢮',0
.254:db '?????????⢮ ??? ࠢ??',0
.255:db 'n-?ୠ? ?㬬?',0
.256:db '??????? ? ???孥? ???????',0
.257:db '?????? ?⥯???',0
.258:db '?????? ?⥯???',0
.259:db '?????????⢮',0
.260:db '?????????⢮ ??? ࠢ??',0
.261:db '??????? s',0
.262:db '????筠? ???',0
.263:db '᫥????⥫쭮',0
.264:db '????筠? ????',0
.265:db 'ᨬ??? ????筠? ????',0
.266:db '㧪?? ?஡??',0
.267:db 'thorn',0
.268:db '????? ⨫줠',0
.269:db '???? 㬭??????',0
.270:db '??࣮??? ??ઠ',0
.271:db '??????? ??५?? ?????',0
.272:db 'u ? ?????? 㤠७???',0
.273:db '??५?? ?????',0
.274:db 'u ? ??????䫥?ᮬ',0
.275:db 'u ? ????? 㤠७???',0
.276:db '???१?',0
.277:db '??ᨫ?? ? ???窮?',0
.278:db '????筠? ??ᨫ??',0
.279:db 'u ? ???१??',0
.280:db '?㪮??᭠? P',0
.281:db '????筠? ???',0
.282:db 'y ? ?????? 㤠७???',0
.283:db '????',0
.284:db 'y ? ???१??',0
.285:db '????筠? ?????',0
.286:db 'ᮥ????⥫? ?㫥??? ??ਭ?',0
.287:db 'ࠧ????⥫? ?㫥??? ??ਭ?',0
.299:db '?????-???? ⥣',0
.329:db '?????? ⥪??',0
.330:db '⥫? html ???㬥???',0
.331:db '??७?? ??ப?',0
.332:db '???????',0
.333:db '????????? 1-?? ?஢??',0
.334:db '????????? 2-?? ?஢??',0
.335:db '????????? 3-?? ?஢??',0
.336:db '????????? 4-?? ?஢??',0
.337:db '????????? 5-?? ?஢??',0
.338:db '????????? 6-?? ?஢??',0
.339:db '????????? 7-?? ?஢??',0
.340:db '????????? html ???㬥???',0
.341:db '??ਧ??⠫쭠? ?????',0
.342:db '??砫? html ???㬥???',0
.343:db '?????ભ???? ⥪??',0
.344:db '??????? ᯨ᪠',0
.345:db '?? ??७????? ⥪?? ?? ᫥?. ??ப?',0
.346:db '?㬥஢????? ᯨ᮪',0
.347:db '??砫? ??????',0
.349:db '?????? ??????',0
.350:db '???孨? ??????',0
.351:db '??砫? ⠡????',0
.352:db '⥫? ⠡????',0
.353:db '???筠? ?祩?? ⠡????',0
.354:db '????????筠? ?祩?? ⠡????',0
.355:db '????????? (???ᠭ??) html ???㬥???',0
.356:db '??砫? ??ப? ⠡????',0
.357:db '?????ભ???? ⥪??',0
.358:db '??????? ᯨ᮪',0
