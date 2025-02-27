-- ------------------------------------------------
-- Version: v1.27
--
-- Description: Migration that introduces the entity table
-- -------------------------------------------------

CREATE TABLE k_Entity (
    ID_ENT integer,
    lodENT character varying(255) NOT NULL,
    labelEntity character varying(255),
    descEntity text,
    lodRelation character varying(255),
    lodENT_R character varying(255),
    lodCanonical character varying(255),
    populatedBy character varying(255),
    lastTouch character varying(255),
    PRIMARY KEY (lodENT)
);

INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:0A735F42', 'BookChapter', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:0BE2DC90', 'Audiovisual', NULL, NULL, 'pidgraph:0BE2DC90', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:0E3C4941', 'Organisations', NULL, NULL, 'pidgraph:0E3C4941', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:119D2282', 'Documents (Text)', NULL, NULL, 'pidgraph:119D2282', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:172E4DCA1', 'Infrastructures', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:1934F07A', 'Academic Conferences', NULL, NULL, 'pidgraph:1934F07A', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:1ABC5A1B', 'Researcher', NULL, NULL, 'pidgraph:1ABC5A1B', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:1C24A022', 'Preprint', NULL, NULL, 'pidgraph:1C24A022', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:1C6C4C6D', 'Datasets', NULL, NULL, 'pidgraph:1C6C4C6D', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:24EAC4F6', 'Service', NULL, NULL, 'pidgraph:24EAC4F6', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:281BBED9', 'PeerReview', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:29459388', 'InteractiveResource', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:32181271', 'Cultural Objects', NULL, NULL, 'pidgraph:32181271', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:329476AA', 'Software', NULL, NULL, 'pidgraph:329476AA', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:33BD9F1A', 'Specimens', NULL, NULL, 'pidgraph:33BD9F1A', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:3C02F091', 'Sound', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:3F7819F8', 'PhysicalObject', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:4496A40D', 'Organisations', NULL, NULL, 'pidgraph:4496A40D', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:4496A40D1', 'Funding decisions', NULL, NULL, 'pidgraph:4496A40D1', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:474E18BC', 'Event', NULL, NULL, 'pidgraph:474E18BC', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:486D53D2', 'Dissertation', NULL, NULL, 'pidgraph:486D53D2', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:4C7AD103', 'Concepts', NULL, NULL, 'pidgraph:4C7AD103', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:4DE27AEE', 'Standard', NULL, NULL, 'pidgraph:4DE27AEE', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:54FB611F', 'Samples', NULL, NULL, 'pidgraph:54FB611F', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:61BDED40', 'DataPaper', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:6A2191FA', 'ConferencePaper', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:72FD092B', 'Research Software', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:72FD092B1', 'Code Fragment', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:72FD092B2', 'Code Repository', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:820CEACE', 'Data types', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:84F689781', 'Digital Specimen', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:87F6C117', 'JournalArticle', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:8F4FBA1E', 'Research Activity', NULL, NULL, 'pidgraph:8F4FBA1E', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:8F94D9B0', 'Research Grants', NULL, NULL, 'pidgraph:8F94D9B0', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:993EF5661', 'Digital Collection', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:9AB688F7', 'ConferenceProceeding', NULL, NULL, 'pidgraph:9AB688F7', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:9EC81DF8', 'Printed Music', NULL, NULL, 'pidgraph:9EC81DF8', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:9FB4B8F4', 'Serial Publications', NULL, NULL, 'pidgraph:9FB4B8F4', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:A11320F4', 'OutputManagementPlan', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:A3DDF97D', 'Book', NULL, NULL, 'pidgraph:A3DDF97D', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:A43E8536', 'Model', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:B1276063', 'ComputationalNotebook', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:B56AAE01', 'Organisations', NULL, NULL, 'pidgraph:B56AAE01', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:B880D9F1', 'Cultural Collections', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:B880D9F11', 'Cultural Holdings', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:C2FE0AAB', 'Image', NULL, NULL, 'pidgraph:C2FE0AAB', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:C618FC01', '(Source) Code', NULL, NULL, 'pidgraph:C618FC01', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:CDC641BA', 'Collection Description', NULL, NULL, 'pidgraph:CDC641BA', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:CF8A77CB', 'Journal', NULL, NULL, 'pidgraph:CF8A77CB', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:CFC5D028', 'Publications', NULL, NULL, 'pidgraph:CFC5D028', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:D1E2AC63', 'Instruments', NULL, NULL, 'pidgraph:D1E2AC63', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:D3AD0C87', 'Workflow', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:DA12E5DC', 'Annotations', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:E9197DEA', 'Person', NULL, NULL, 'pidgraph:E9197DEA', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:EA784647', 'Report', NULL, NULL, 'pidgraph:EA784647', NULL, '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Entity(ID_ENT, lodENT, labelEntity, descEntity, lodRelation, lodENT_R, lodCanonical, populatedBy, lastTouch) VALUES (NULL, 'pidgraph:F99A74D1', 'Research Outputs', NULL, NULL, 'pidgraph:F99A74D1', NULL, '0000-0002-0255-5101', '29-01-2025');

