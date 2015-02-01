#!/bin/bash

PREFIX="http://dumps.wikimedia.org"

# gz
declare -a dumps_gz=("/enwiki/20150112/enwiki-20150112-flaggedrevs.sql.gz" "/enwiki/20150112/enwiki-20150112-flaggedpages.sql.gz" "/enwiki/20150112/enwiki-20150112-pages-logging.xml.gz" "/enwiki/20150112/enwiki-20150112-stub-meta-history.xml.gz" "/enwiki/20150112/enwiki-20150112-stub-meta-current.xml.gz" "/enwiki/20150112/enwiki-20150112-stub-articles.xml.gz" "/enwiki/20150112/enwiki-20150112-stub-meta-history1.xml.gz" "/enwiki/20150112/enwiki-20150112-stub-meta-current27.xml.gz" "/enwiki/20150112/enwiki-20150112-stub-articles1.xml.gz" "/enwiki/20150112/enwiki-20150112-stub-articles27.xml.gz" "/enwiki/20150112/enwiki-20150112-all-titles.gz" "/enwiki/20150112/enwiki-20150112-all-titles-in-ns0.gz" "/enwiki/20150112/enwiki-20150112-iwlinks.sql.gz" "/enwiki/20150112/enwiki-20150112-redirect.sql.gz" "/enwiki/20150112/enwiki-20150112-protected_titles.sql.gz" "/enwiki/20150112/enwiki-20150112-page_props.sql.gz" "/enwiki/20150112/enwiki-20150112-page_restrictions.sql.gz" "/enwiki/20150112/enwiki-20150112-page.sql.gz" "/enwiki/20150112/enwiki-20150112-category.sql.gz" "/enwiki/20150112/enwiki-20150112-user_groups.sql.gz" "/enwiki/20150112/enwiki-20150112-interwiki.sql.gz" "/enwiki/20150112/enwiki-20150112-langlinks.sql.gz" "/enwiki/20150112/enwiki-20150112-externallinks.sql.gz" "/enwiki/20150112/enwiki-20150112-templatelinks.sql.gz" "/enwiki/20150112/enwiki-20150112-imagelinks.sql.gz" "/enwiki/20150112/enwiki-20150112-categorylinks.sql.gz" "/enwiki/20150112/enwiki-20150112-pagelinks.sql.gz" "/enwiki/20150112/enwiki-20150112-image.sql.gz" "/enwiki/20150112/enwiki-20150112-site_stats.sql.gz")

for i in "${dumps_gz[@]}"
do
   echo "$i"
   NAME=`basename $i`
   wget -qO- $PREFIX$i | gunzip  | head -c 1048576 > ${NAME%.*}
done


# bz2
declare -a dumps_bz2=("/enwiki/20150112/enwiki-20150112-pages-articles-multistream.xml.bz2" "/enwiki/20150112/enwiki-20150112-pages-articles-multistream-index.txt.bz2" "/enwiki/20150112/enwiki-20150112-pages-meta-history1.xml-p000000010p000002983.bz2" "/enwiki/20150112/enwiki-20150112-pages-meta-history27.xml-p042873656p045037781.bz2" "/enwiki/20150112/enwiki-20150112-pages-meta-current.xml.bz2" "/enwiki/20150112/enwiki-20150112-pages-meta-current1.xml-p000000010p000010000.bz2" "/enwiki/20150112/enwiki-20150112-pages-meta-current27.xml-p029625001p045037781.bz2" "/enwiki/20150112/enwiki-20150112-pages-articles.xml.bz2" "/enwiki/20150112/enwiki-20150112-pages-articles1.xml-p000000010p000010000.bz2" "/enwiki/20150112/enwiki-20150112-pages-articles27.xml-p029625017p045037781.bz2")

for i in "${dumps_bz2[@]}"
do
  echo "$i"
   NAME=`basename $i`
   wget -qO- $PREFIX$i | bunzip2 | head -c 1048576 > ${NAME%.*}
   rm $NAME
done


declare -a dumps=("/enwiki/20150112/enwiki-20150112-md5sums.txt" "/enwiki/20150112/enwiki-20150112-abstract.xml" "/enwiki/20150112/enwiki-20150112-abstract1.xml" "/enwiki/20150112/enwiki-20150112-abstract23.xml")

for i in "${dumps[@]}"
do
  echo "$i"
   NAME=`basename $i`
   wget -qO- $PREFIX$i | head -c 1048576 > $NAME
done