Solr configured for Typo3
===========

Just use this command to start the container. Solr will listen on port 8282.

	docker run -d -p 8282:8080 obi12341/solr-typo3


In the solr extension you can put these paths:

	http://ip:8282/solr-4.8.1/core_de/
	http://ip:8282/solr-4.8.1/core_en/
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