-- ------------------------------------------------
-- Version: v1.3
--
-- Description: Migration that introduces the provider type provider relation
-- -------------------------------------------------

CREATE TABLE k_Provider_TypeProvider (
    IDTPR_PRV integer,
    lodPRV character varying(255) NOT NULL,
    lodRelation character varying(255),
    lodTPR character varying(255),
    startDate timestamp with time zone,
    populatedBy character varying(255),
    lastTouch character varying(255),
    PRIMARY KEY (lodPRV, lodTPR),
    FOREIGN KEY (lodPRV) REFERENCES k_Provider(lodPRV) ON DELETE CASCADE,
    FOREIGN KEY (lodTPR) REFERENCES k_Type_Provider(lodTPR) ON DELETE CASCADE
);


INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:C3F73B86', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:A7074BF7', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:F23932AE', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:4491BAB1', 'isOfType', 'pid_graph:FBFDB448', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:78C5DD5E', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:5808D13E', 'isOfType', 'pid_graph:DB893DE8', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:3C391CE0', 'isOfType', 'pid_graph:DB893DE8', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:C496EAD7', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:24B83E30', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:508240F7', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:A1C6B677', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:0744D7A2', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:B932C3AD', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:D2D0AB0F', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:530D0168', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:66DB4934', 'isOfType', 'pid_graph:DB893DE8', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:692E6BE7', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:01F7DFBA', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:C9E0E092', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:F6308707', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:8C8A02AB', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:33C4D427', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:71572A11', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:F9C2FE9F', 'isOfType', 'pid_graph:DB893DE8', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:0320244D', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:C794C66B', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:158F1A3C', 'isOfType', 'pid_graph:FBFDB448', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:ACA4FB20', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:F29743FC', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:FCECC2D2', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:F46811F9', 'isOfType', 'pid_graph:DB893DE8', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:44F64F9F', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:78CB2A61', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:D51999D1', 'isOfType', 'pid_graph:FBFDB448', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:D4CCA3D7', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:B5D02F72', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:258448F0', 'isOfType', 'pid_graph:FBFDB448', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:ED720170', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:4F922FE1', 'isOfType', 'pid_graph:F1662576', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:5FB541DE', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:D1DB7F9F', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:23DB5BB4', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:393211A0', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:6FC02CC0', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:ECDBAB97', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:B87EEF45', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:8BA669F9', 'isOfType', 'pid_graph:DB893DE8', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:71E5F007', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:9CE13EF4', 'isOfType', 'pid_graph:DB893DE8', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:E956333B', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:AF6411A6', 'isOfType', 'pid_graph:DB893DE8', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:27F7E471', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:D43A6D07', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:2DEE4AE8', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:F0037977', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:DB82ABA9', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:88325889', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:2D819813', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:1EE367AE', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:1DC03610', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:8B3C5C36', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:DCD3FC34', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:65D51A09', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:CEA1CCB4', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:6498B100', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:37CEA8A5', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:9AE6AE97', 'isOfType', 'pid_graph:DB893DE8', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:34072556', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:56BF54AA', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:75B1FCDA', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:138F5B2F', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:0F0DCC2E', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:D25DE680', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:5097CE38', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:0CDD8999', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:25BED641', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:B63833FF', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:1B133F69', 'isOfType', 'pid_graph:FBFDB448', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:C6D924E8', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:B09F8820', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:650F2243', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:33A4BB68', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:DA6693BF', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:D2444AE0', 'isOfType', 'pid_graph:DB893DE8', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:10A7646D', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:E680F29D', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:C3FFCEE6', 'isOfType', 'pid_graph:F1662576', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:2349E97E', 'isOfType', 'pid_graph:F1662576', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:A19A5A5C', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:0959C132', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:B92A63E8', 'isOfType', 'pid_graph:F1662576', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:5742B6B8', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:AAB4FC28', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:C7531219', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:32BB916F', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:5F4069FD', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:F1F5DC6A', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:E16BBCB2', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:B393463B', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:8C3ABE90', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:14EA6178', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:79DB44B8', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:6ADA1073', 'isOfType', 'pid_graph:DB893DE8', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:C688E761', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:353B65A6', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:591D90E5', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:AF8DFCEF', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:65A98C52', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:B7D3F8B5', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:99C92854', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:7F247AB9', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:3212F319', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:980D999B', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:80EA8CF5', 'isOfType', 'pid_graph:FBFDB448', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:59E406A0', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:3D9AADCF', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:F38633A8', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:0CC2415E', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:6AA27949', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:FB50A534', 'isOfType', 'pid_graph:F1662576', NULL, NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:BF77595D', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:723A3E8C', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:34E1F831', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:99643B8E', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:F1F3CA08', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:8217B24E', 'isOfType', 'pid_graph:F1662576', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:4CF33A60', 'isOfType', 'pid_graph:F1662576', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:9F6AC0F7', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:42A731CC', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:2253F9A1', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:20ADCB86', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:766E2022', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:9032CB3E', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:7475B7DC', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:4301C3C3', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:C3582F72', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:012DA850', 'isOfType', 'pid_graph:DB893DE8', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:7AA2E7F6', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:5F4F4BD6', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:55A906F6', 'isOfType', 'pid_graph:F1662576', '0000-0002-0255-5101', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:9E3A0D4D', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:8A00FB1C', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:4CA9BB01', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:9DBAE1BE', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:6576BB21', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:AC92BDCD', 'isOfType', 'pid_graph:DB893DE8', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:84FC6E72', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:B0767447', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:467FE089', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:FA845BA9', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:C6B30B7D', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);
INSERT INTO k_Provider_TypeProvider(IDTPR_PRV, lodPRV, lodRelation, lodTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:4286C744', 'isOfType', 'pid_graph:F1662576', '0009-0006-1756-5317', NULL);