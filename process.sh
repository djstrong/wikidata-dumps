#!/bin/bash

# gz
declare -a dumps_gz=("http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-sites.sql.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-wb_entity_per_page.sql.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-wb_terms.sql.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-wb_items_per_site.sql.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-pages-logging.xml.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-stub-meta-history.xml.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-stub-meta-current.xml.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-stub-articles.xml.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-all-titles.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-all-titles-in-ns0.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-iwlinks.sql.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-redirect.sql.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-protected_titles.sql.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-page_props.sql.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-page_restrictions.sql.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-page.sql.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-category.sql.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-user_groups.sql.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-interwiki.sql.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-langlinks.sql.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-externallinks.sql.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-templatelinks.sql.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-imagelinks.sql.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-categorylinks.sql.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-pagelinks.sql.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-image.sql.gz" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-site_stats.sql.gz")

for i in "${dumps_gz[@]}"
do
   echo "$i"
   NAME=`basename $i`
   wget -qO- $i | gunzip  | head -c 1048576 > ${NAME%.*}
done


# bz2
declare -a dumps_bz2=("http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-pages-meta-current.xml.bz2" "http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-pages-articles.xml.bz2")

for i in "${dumps_bz2[@]}"
do
  echo "$i"
   NAME=`basename $i`
   wget -qO- $i | bunzip2 | head -c 1048576 > ${NAME%.*}
   rm $NAME
done


declare -a dumps=("http://dumps.wikimedia.org/wikidatawiki/20150113/wikidatawiki-20150113-abstract.xml")

for i in "${dumps_bz2[@]}"
do
  echo "$i"
   NAME=`basename $i`
   wget -qO- $i | head -c 1048576 > $NAME
done