-- ------------------------------------------------
-- Version: v1.4
--
-- Description: Migration that introduces the type manager table
-- -------------------------------------------------

CREATE TABLE k_Type_Manager (
    IDTMR integer,
    lodTMR character varying(255) NOT NULL,
    typeManager character varying(255),
    populatedBy character varying(255),
    lastTouch character varying(255),
    descTypeManager text,
    PRIMARY KEY (lodTMR)
);


INSERT INTO k_Type_Manager(IDTMR, lodTMR, typeManager, populatedBy, lastTouch,descTypeManager) VALUES (NULL, 'pid_graph:A64EC20D', 'Association', '0000-0002-0255-5101', '03/02/2025 20:53:44', NULL);
INSERT INTO k_Type_Manager(IDTMR, lodTMR, typeManager, populatedBy, lastTouch,descTypeManager) VALUES (NULL, 'pid_graph:89816D6D', 'Funder', '0000-0002-0255-5101', '03/02/2025 20:53:44', NULL);
INSERT INTO k_Type_Manager(IDTMR, lodTMR, typeManager, populatedBy, lastTouch,descTypeManager) VALUES (NULL, 'pid_graph:67265E70', 'Publisher', '0000-0002-0255-5101', '03/02/2025 20:53:44', NULL);
INSERT INTO k_Type_Manager(IDTMR, lodTMR, typeManager, populatedBy, lastTouch,descTypeManager) VALUES (NULL, 'pid_graph:D6935A46', 'Repository/ Profile Organisation', '0000-0002-0255-5101', '03/02/2025 20:53:44', NULL);
INSERT INTO k_Type_Manager(IDTMR, lodTMR, typeManager, populatedBy, lastTouch,descTypeManager) VALUES (NULL, 'pid_graph:72C29F23', 'Research Institute', '0000-0002-0255-5101', '03/02/2025 20:53:44', NULL);
INSERT INTO k_Type_Manager(IDTMR, lodTMR, typeManager, populatedBy, lastTouch,descTypeManager) VALUES (NULL, 'pid_graph:EF6D46B4', 'Data Center', '0000-0002-0255-5101', '03/02/2025 20:53:44', NULL);
INSERT INTO k_Type_Manager(IDTMR, lodTMR, typeManager, populatedBy, lastTouch,descTypeManager) VALUES (NULL, 'pid_graph:826CD5BF', 'Educational Institution', '0000-0002-0255-5101', '03/02/2025 20:53:44', 'Typically, this would include universities, colleges, or other educational entities that use ARKs in their digital or physical resource management.');
INSERT INTO k_Type_Manager(IDTMR, lodTMR, typeManager, populatedBy, lastTouch,descTypeManager) VALUES (NULL, 'pid_graph:60355F10', 'For-Profit Organisation', '0000-0002-0255-5101', '03/02/2025 20:53:44', 'This represents for-profit entities that might include commercial companies or businesses that use ARK identifiers.');
INSERT INTO k_Type_Manager(IDTMR, lodTMR, typeManager, populatedBy, lastTouch,descTypeManager) VALUES (NULL, 'pid_graph:E9A5758B', 'Governmental Organisation', '0000-0002-0255-5101', '03/02/2025 20:53:44', 'This code is used for governmental bodies or agencies that utilize ARK identifiers, often for public records, archives, or cultural heritage purposes.');
INSERT INTO k_Type_Manager(IDTMR, lodTMR, typeManager, populatedBy, lastTouch,descTypeManager) VALUES (NULL, 'pid_graph:2BFA449C', 'Non-Profit Organisation', '0000-0002-0255-5101', '03/02/2025 20:53:44', 'This code is used for organizations that operate on a non-profit basis, including many academic institutions, libraries, and archives.');
INSERT INTO k_Type_Manager(IDTMR, lodTMR, typeManager, populatedBy, lastTouch,descTypeManager) VALUES (NULL, 'pid_graph:F1662576', 'Agency', '0000-0002-0255-5101', '03/02/2025 20:53:44', NULL);
INSERT INTO k_Type_Manager(IDTMR, lodTMR, typeManager, populatedBy, lastTouch,descTypeManager) VALUES (NULL, 'pid_graph:F8A188EC', 'Collection Manager', '0000-0002-0255-5101', '03/02/2025 20:53:44', NULL);
INSERT INTO k_Type_Manager(IDTMR, lodTMR, typeManager, populatedBy, lastTouch,descTypeManager) VALUES (NULL, 'pid_graph:FE63C7CE', 'Other Types', '0000-0002-0255-5101', '03/02/2025 20:53:44', 'This might represent organisations that don''t fall neatly into the above categories or have a different purpose or structure.');
INSERT INTO k_Type_Manager(IDTMR, lodTMR, typeManager, populatedBy, lastTouch,descTypeManager) VALUES (NULL, 'pid_graph:AFE63C7CE3', 'Country-Level Agency', '0000-0002-0255-5101', '03/02/2025 20:53:44', NULL);
INSERT INTO k_Type_Manager(IDTMR, lodTMR, typeManager, populatedBy, lastTouch,descTypeManager) VALUES (NULL, 'pid_graph:AFE63C7CE2', 'Library/ Museum', '0000-0002-0255-5101', '03/02/2025 20:53:44', NULL);
INSERT INTO k_Type_Manager(IDTMR, lodTMR, typeManager, populatedBy, lastTouch,descTypeManager) VALUES (NULL, 'pid_graph:AFE63C7CE1', 'National Library', '0000-0002-0255-5101', '03/02/2025 20:53:44', NULL);

