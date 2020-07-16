#
#   Auto-create an index
#

TITLE='Papers for Bootstrapping Time Series Data'

echo '<head>'
echo "<title>$TITLE</title>"
echo '<link rel="stylesheet" type="text/css" href="http://quantdevel.com/css/global.css" />'
echo '</head>'

echo "<h1>$TITLE</h1>"

echo '<body>'
echo '<ul>'

for F in *.pdf
do
    echo "<li><a href='$F'>$F</li>"
done

echo '</ul>'
echo '</body>'
