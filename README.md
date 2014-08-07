Solr configured for Typo3
===========

Just use this command to start the container. Solr will listen on port 8282.

        docker run -d -p 8282:8080 obi12341/solr-typo3


In the solr extension you can put these paths:

        http://<ip>:8282/solr-4.8.1/core_de/
        http://<ip>:8282/solr-4.8.1/core_en/
