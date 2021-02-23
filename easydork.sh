#!/bin/bash
toilet -F gay -f mono12 EasyDork
echo -e "<-------------------------(\e[95m by CSPSHIV\e[5mΔ\e[0m\e[95mM\e[0m )----------------------------->"
echo -e "<-------------------------(\e[95m https://www.cspshivam.com/tools \e[0m)---------->"
echo "	"
usage(){
echo -e "Usage  : $ easydork [domain]
Example: $ easydork target.com"
}
if [ $# -eq 0 ] || [ "$1" = "-h" ] || [ "$1" = "--help" ]
  then
    usage
    exit
fi
echo -e "\e[96m[Find Subdomains\e[0m] ↴
 [ https://www.google.com/search?q=site:*.$1 ]"
echo "	"
echo -e "[\e[96mFind Sub-Subdomains\e[0m] ↴
 [ https://www.google.com/search?q=site:*.*.$1 ]"
echo "	"
echo -e "[\e[96m.htaccess sensitive files\e[0m] ↴
 [ https://www.google.com/search?q=site:$1+inurl:%22/phpinfo.php%22+|+inurl:%22.htaccess%22+|+inurl:%22/.git%22+$1%20-github ]"
echo "	"
echo -e "[\e[96mApache STRUTS RCE\e[0m] ↴
 [ https://www.google.com/search?q=site:$1+ext:action+|+ext:struts+|+ext:do ]"
echo "	"
echo -e "[\e[96mOpen Redirects\e[0m] ↴
 [ https://www.google.com/search?q=site:$1+inurl:redir+|+inurl:url+|+inurl:redirect+|+inurl:return+|+inurl:src=http+|+inurl:r=http ]"
echo "	"
echo -e "[\e[96mDirectory Listing Vulnerabilities\e[0m] ↴
 [ https://www.google.com/search?q=site:$1+intitle:index.of ]"
echo "	"
echo -e "[\e[96mFind .swf files\e[0m] ↴
 [ https://www.google.com/search?q=+inurl:$1+ext:swf ]"
echo "	"
echo -e "[\e[96mLogin Pages\e[0m] ↴
 [ https://www.google.com/search?q=site:$1+inurl:login ]"
echo "	"
echo -e "[\e[96mInstall / Setup Files\e[0m] ↴
 [ https://www.google.com/search?q=site:$1+inurl:readme+|+inurl:license+|+inurl:install+|+inurl:setup+|+inurl:config ]"
echo "	"
echo -e "[\e[96mFinding Backdoors\e[0m] ↴
 [ https://www.google.com/search?q=site:$1+inurl:shell+|+inurl:backdoor+|+inurl:wso+|+inurl:cmd+|+shadow+|+passwd+|+boot.ini+|+inurl:backdoor ]"
echo "	"
echo -e "[\e[96mPHP info()\e[0m] ↴
 [ https://www.google.com/search?q=site:$1+ext:php+intitle:phpinfo+%22published+by+the+PHP+Group%22 ]"
echo "	"
echo -e "[\e[96mPublicaly Exposed Documents\e[0m] ↴
 [ https://www.google.com/search?q=site:$1+ext:doc+|+ext:docx+|+ext:odt+|+ext:pdf+|+ext:rtf+|+ext:sxw+|+ext:psw+|+ext:ppt+|+ext:pptx+|+ext:pps+|+ext:csv ]"
echo "	"
echo -e "[\e[96mSQL Errors\e[0m] ↴
 [ https://www.google.com/search?q=site:$1+intext:%22sql+syntax+near%22+|+intext:%22syntax+error+has+occurred%22+|+intext:%22incorrect+syntax+near%22+|+intext:%22unexpected+end+of+SQL+command%22+|+intext:%22Warning:+mysql_connect()%22+|+intext:%22Warning:+mysql_query()%22+|+intext:%22Warning:+pg_connect()%22 ]"
echo "	"
echo -e "[\e[96mBackup & Old files\e[0m] ↴
 [ https://www.google.com/search?q=site:$1+ext:bkf+|+ext:bkp+|+ext:bak+|+ext:old+|+ext:backup ]"
echo "	"
echo -e "[\e[96mExplosed Log Files\e[0m] ↴
 [ https://www.google.com/search?q=site:$1+ext:log ]"
echo "	"
echo -e "[\e[96mFind Wordpress\e[0m] ↴
 [ https://www.google.com/search?q=site:$1+inurl:wp-+|+inurl:wp-content+|+inurl:plugins+|+inurl:uploads+|+inurl:themes+|+inurl:download ]"
echo "	"
echo -e "[\e[96mFind Wordpress #2\e[0m] ↴
 [ https://www.google.com/search?q=site:$1+inurl:wp-content+|+inurl:wp-includes ]"
echo "	"
echo -e "[\e[96mFind Wordpress ~Wayback Machine~\e[0m] ↴
 [ http://wwwb-dedup.us.archive.org:8083/cdx/search?url=$1/&matchType=domain&collapse=digest&output=text&fl=original,timestamp&filter=urlkey:.*wp[-].*&limit=1000000&xx= ]"
echo "	"
echo -e "[\e[96mExposed Database Files\e[0m] ↴
 [ https://www.google.com/search?q=site:$1+ext:sql+|+ext:dbf+|+ext:mdb ]"
echo "	"
echo -e "[\e[96mExposed Configuration Files\e[0m] ↴
 [ https://www.google.com/search?q=site:$1+ext:xml+|+ext:conf+|+ext:cnf+|+ext:reg+|+ext:inf+|+ext:rdp+|+ext:cfg+|+ext:txt+|+ext:ora+|+ext:ini ]"
echo "	"
echo -e "[\e[96mSearch in Github\e[0m] ↴
 [ https://github.com/search?q=%22*.$1%22&type=host ]"
echo "	"
echo -e "[\e[96mSearch in OpenBugBounty\e[0m] ↴
 [ https://www.openbugbounty.org/search/?search=$1&type=host ]"
echo "	"
echo -e "[\e[96mSearch in Reddit\e[0m] ↴
 [ https://www.reddit.com/search/?q=$1&source=recent ]"
echo "	"
echo -e "[\e[96mSearch in Shodan\e[0m] ↴
 [ https://www.shodan.io/search?query=$1 ]"
echo "	"
echo -e "[\e[96mFind Pastebin Entries\e[0m] ↴
 [ https://www.google.com/search?q=site:pastebin.com+$1 ]"
echo "	"
echo -e "[\e[96mEmployees on Linkedin\e[0m] ↴
 [ https://www.google.com/search?q=site:linkedin.com+employees+$1 ]"
echo "	"
echo "<-------------------------( Happy Hunting )------------------------->"













