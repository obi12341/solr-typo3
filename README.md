Solr configured for Typo3
===========
[![Build Status](https://travis-ci.org/obi12341/solr-typo3.svg?branch=master)](https://travis-ci.org/obi12341/solr-typo3)

__***Note:***__
**If you are using EXT:solr = 4.0 please use solr-typo3:4.10.4-2**

**If you are using EXT:solr = 5.0 please use solr-typo3:4.10.4-3**

Just use this command to start the container. Solr will listen on port 8282.

	docker run -d -p 8282:8080 writl/solr-typo3:4.10.4-3

If you want to run in production you should better use this:

	docker run -d --restart="always" -p 127.0.0.1:8282:8080 writl/solr-typo3:4.10.4-3
	
If you want to store the data persistent you have to run it like that:
	
	docker run -d --restart="always" -p 127.0.0.1:8282:8080 -v <dir>:/opt/solr-tomcat/solr/typo3cores/data writl/solr-typo3:4.10.4-3
	
In the solr extension you can put these paths:

	http://ip:8282/solr/core_de/
	http://ip:8282/solr/core_en/
	...

Available languages:

	core_en english
	core_de german
	core_ar arabic 
	core_hy armenian 
	core_eu basque
	core_bp brazilian_portuguese 
	core_bg bulgarian 
	core_my burmese 
	core_ca catalan 
	core_zh chinese 
	core_cs czech 
	core_da danish 
	core_nl dutch 
	core_fi finnish
	core_fr french
	core_gl galician
	core_el greek 
	core_hi hindi 
	core_hu hungarian 
	core_id indonesian
	core_it italian
	core_ja japanese
	core_km khmer
	core_ko korean
	core_lo lao
	core_no norwegian
	core_fa persian
	core_pl polish
	core_pt portuguese
	core_ro romanian
	core_ru russian
	core_es spanish 
	core_sv swedish
	core_th thai
	core_tr turkish
	core_uk ukrainian
