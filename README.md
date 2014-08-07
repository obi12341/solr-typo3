Solr configured for Typo3
===========

Just use this command to start the container. Solr will listen on port 8282.

        docker run -d -p 8282:8080 obi12341/solr-typo3


In the solr extension you can put these paths:

	http://<ip>:8282/solr-4.8.1/core_de/
	http://<ip>:8282/solr-4.8.1/core_en/

Available languages: (just put the name="" into the URI)
	<core name="core_en" instanceDir="typo3cores" schema="english/schema.xml" dataDir="data/core_en" />
	<core name="core_de" instanceDir="typo3cores" schema="german/schema.xml" dataDir="data/core_de" />
	<core name="core_ar" instanceDir="typo3cores" schema="arabic/schema.xml" dataDir="data/core_ar" />
	<core name="core_hy" instanceDir="typo3cores" schema="armenian/schema.xml" dataDir="data/core_hy" />
	<core name="core_eu" instanceDir="typo3cores" schema="basque/schema.xml" dataDir="data/core_eu" />
	<core name="core_bp" instanceDir="typo3cores" schema="brazilian_portuguese/schema.xml" dataDir="data/core_bp" />
	<core name="core_bg" instanceDir="typo3cores" schema="bulgarian/schema.xml" dataDir="data/core_bg" />
	<core name="core_my" instanceDir="typo3cores" schema="burmese/schema.xml" dataDir="data/core_my" />
	<core name="core_ca" instanceDir="typo3cores" schema="catalan/schema.xml" dataDir="data/core_ca" />
	<core name="core_zh" instanceDir="typo3cores" schema="chinese/schema.xml" dataDir="data/core_zh" />
	<core name="core_cs" instanceDir="typo3cores" schema="czech/schema.xml" dataDir="data/core_cs" />
	<core name="core_da" instanceDir="typo3cores" schema="danish/schema.xml" dataDir="data/core_da" />
	<core name="core_nl" instanceDir="typo3cores" schema="dutch/schema.xml" dataDir="data/core_nl" />
	<core name="core_fi" instanceDir="typo3cores" schema="finnish/schema.xml" dataDir="data/core_fi" />
	<core name="core_fr" instanceDir="typo3cores" schema="french/schema.xml" dataDir="data/core_fr" />
	<core name="core_gl" instanceDir="typo3cores" schema="galician/schema.xml" dataDir="data/core_gl" />
	<core name="core_el" instanceDir="typo3cores" schema="greek/schema.xml" dataDir="data/core_el" />
	<core name="core_hi" instanceDir="typo3cores" schema="hindi/schema.xml" dataDir="data/core_hi" />
	<core name="core_hu" instanceDir="typo3cores" schema="hungarian/schema.xml" dataDir="data/core_hu" />
	<core name="core_id" instanceDir="typo3cores" schema="indonesian/schema.xml" dataDir="data/core_id" />
	<core name="core_it" instanceDir="typo3cores" schema="italian/schema.xml" dataDir="data/core_it" />
	<core name="core_ja" instanceDir="typo3cores" schema="japanese/schema.xml" dataDir="data/core_ja" />
	<core name="core_km" instanceDir="typo3cores" schema="khmer/schema.xml" dataDir="data/core_km" />
	<core name="core_ko" instanceDir="typo3cores" schema="korean/schema.xml" dataDir="data/core_ko" />
	<core name="core_lo" instanceDir="typo3cores" schema="lao/schema.xml" dataDir="data/core_lo" />
	<core name="core_no" instanceDir="typo3cores" schema="norwegian/schema.xml" dataDir="data/core_no" />
	<core name="core_fa" instanceDir="typo3cores" schema="persian/schema.xml" dataDir="data/core_fa" />
	<core name="core_pl" instanceDir="typo3cores" schema="polish/schema.xml" dataDir="data/core_pl" />
	<core name="core_pt" instanceDir="typo3cores" schema="portuguese/schema.xml" dataDir="data/core_pt" />
	<core name="core_ro" instanceDir="typo3cores" schema="romanian/schema.xml" dataDir="data/core_ro" />
	<core name="core_ru" instanceDir="typo3cores" schema="russian/schema.xml" dataDir="data/core_ru" />
	<core name="core_es" instanceDir="typo3cores" schema="spanish/schema.xml" dataDir="data/core_es" />
	<core name="core_sv" instanceDir="typo3cores" schema="swedish/schema.xml" dataDir="data/core_sv" />
	<core name="core_th" instanceDir="typo3cores" schema="thai/schema.xml" dataDir="data/core_th" />
	<core name="core_tr" instanceDir="typo3cores" schema="turkish/schema.xml" dataDir="data/core_tr" />
	<core name="core_uk" instanceDir="typo3cores" schema="ukrainian/schema.xml" dataDir="data/core_uk" />
