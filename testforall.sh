#!/bin/bash
#pwd inside anime eg: pwd=5404/.
tot=`ls -1 -v | wc -l`
for h in `ls -1 -v`
do
if [ -d $h ]
then
	#if [ -f indvtest.sh ]
	#then
	#cp indvtest.sh $h/
	#fi
rm $h/index*
x=0
ew=${PWD##*/}
echo '<html>' > $h/index.html
echo '<head>' >> $h/index.html
echo '<title>' >> $h/index.html
echo "$nam $h" >> $h/index.html
echo '</title>' >> $h/index.html
echo '<script src="../../jquery-1.7.1.min.js" ></script>' >> $h/index.html
echo '<script src="../../script.js" ></script>' >> $h/index.html
echo '<script src="http://code.jquery.com/jquery-1.7.1.min.js" ></script>' >> $h/index.html
echo '<script>var a = document.getElementsByClassName("next");</script>' >> $h/index.html
echo '</head>' >> $h/index.html
echo '<body>' >> $h/index.html
l=`pwd`
cat ../style.txt >> $h/index.html
cat ../script.txt >> $h/index.html
cat ../content.txt >> $h/index.html
echo '<select size=1 name="chapters" id="myBtn3" onchange="window.location.href=value;" style="width : 380px;">' >> $h/index.html
for cde in $(ls -1 -v)
do
	if [ -d $cde ]
	then
		echo "<option value=\"../$cde/index.html\">chapter $cde</option>" >> $h/index.html
	fi
done
echo "</select>" >> $h/index.html
echo '<br/>' >> $h/index.html
for i in `ls -v -1 $h | egrep 'jpg|png|jpeg'`
do
	x=$((x+1))
done
#select bar to go to a page
cou=$x
echo '<select size="1" name="links" id="myBtn4" onchange="window.location.href=this.value;">' >> $h/index.html
for ((id=1;id<=cou;id++))
do
	echo "<option value=\"#$id\">Page $id </option>" >> $h/index.html
done
echo "</select>" >> $h/index.html
echo '</div></div>' >> $h/index.html
de=0
for i in `ls -v -1 $h | egrep 'jpg|png|jpeg'`
do
de=$((de+1))
echo "<p id=\"$de\"><img onload=\"onLoadImg(this);\" src=\"$i\" class=\"next\" onclick=\"scrollto(a[$de])\"></p>" >> $h/index.html
done
echo '</body>' >> $h/index.html
echo '</html>' >> $h/index.html
fi
done
