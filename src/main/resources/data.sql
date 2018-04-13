INSERT INTO service_properties (id, stage, content) VALUES ('WEB-FRONTEND', 'dev', '{"id": "WEB-FRONTEND", "label": "Web-Frontend", "tag": "frontend", "fdOwner": "John Doe", "description": "Fancy Reactular Frontend", "documentationLink": "https://github.com/dm-drogeriemarkt/selavi", "bitbucketUrl": "https://github.com/dm-drogeriemarkt/selavi", "consumes": [{"target": "API-GATEWAY", "type": "REST"}]}');
INSERT INTO service_properties (id, stage, content) VALUES ('API-GATEWAY', 'dev', '{"id": "API-GATEWAY", "label": "API-Gateway", "tag": "gateway", "fdOwner": "Jane Doe", "description": "Front Door to our Backend services", "documentationLink": "https://github.com/dm-drogeriemarkt/selavi", "bitbucketUrl": "https://github.com/dm-drogeriemarkt/selavi", "consumes": [{"target": "FOO-SERVICE", "type": "REST"}, {"target": "BAR-SERVICE", "type": "REST"}, {"target": "BAZ-SERVICE", "type": "REST"}]}');
INSERT INTO service_properties (id, stage, content) VALUES ('FOO-SERVICE', 'dev', '{"id": "FOO-SERVICE", "label": "Foo-Service", "tag": "backend", "fdOwner": "Manfred Mustermann", "description": "Generic Service that does Foo", "documentationLink": "https://github.com/dm-drogeriemarkt/selavi", "bitbucketUrl": "https://github.com/dm-drogeriemarkt/selavi", "consumes": [{"target": "MESSAGE-BUS", "type": "Kafka"}]}');
INSERT INTO service_properties (id, stage, content) VALUES ('BAR-SERVICE', 'dev', '{"id": "BAR-SERVICE", "label": "Bar-Service", "tag": "backend", "fdOwner": "Bernd Bierhobel", "description": "Generic Service that does Bar", "documentationLink": "https://github.com/dm-drogeriemarkt/selavi", "bitbucketUrl": "https://github.com/dm-drogeriemarkt/selavi", "consumes": [{"target": "FOO-SERVICE", "type": "REST"}, {"target": "MESSAGE-BUS", "type": "Kafka"}]}');
INSERT INTO service_properties (id, stage, content) VALUES ('BAZ-SERVICE', 'dev', '{"id": "BAZ-SERVICE", "label": "Baz-Service", "tag": "backend", "fdOwner": "Doris Dosenbier", "description": "Generic Service that does Baz (and is missing some documentation links)", "consumes": [{"target": "FOO-SERVICE", "type": "REST"}, {"target": "MESSAGE-BUS", "type": "Kafka"}]}');
INSERT INTO service_properties (id, stage, content) VALUES ('MESSAGE-BUS', 'dev', '{"id": "MESSAGE-BUS", "label": "Message-Bus", "tag": "messaging", "fdOwner": "Jörg Jägermeister", "description": "Everyone does this messaging thingy today, so we figured we should do it, too",  "documentationLink": "https://github.com/dm-drogeriemarkt/selavi", "bitbucketUrl": "https://github.com/dm-drogeriemarkt/selavi","external": true, "consumes": []}');