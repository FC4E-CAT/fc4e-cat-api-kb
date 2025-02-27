-- ------------------------------------------------
-- Version: v1.12
--
-- Description: Migration that introduces the standard standardsBody relation
-- -------------------------------------------------

CREATE TABLE k_Standard_StandardsBody (
    ID_STD_STB integer,
    lod_STD character varying(255) NOT NULL,
    lodRelation character varying(255),
    lodSTB character varying(255) NOT NULL,
    ID_STD_STB_V character varying(255),
    populatedBy character varying(255),
    lastTouch character varying(255),
    PRIMARY KEY (lod_STD, lodSTB),
    FOREIGN KEY (lod_STD) REFERENCES k_Standard(lodSTD) ON DELETE CASCADE,
    FOREIGN KEY (lodSTB) REFERENCES k_StandardsBody(lodSTB) ON DELETE CASCADE
);

INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:03C5D7F5', 'maintainedBy', 'pid_graph:59EEFD5A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:03C5D7F5X', 'maintainedBy', 'pid_graph:11BD7A08', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:08650BA9', 'maintainedBy', 'pid_graph:59EEFD5A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:08ED4B63', 'maintainedBy', 'pid_graph:99DC935C', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:0C1DF6E0', 'maintainedBy', 'pid_graph:4DDAB116', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:0D1FD2AD', 'maintainedBy', 'pid_graph:59EEFD5A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:11C24D84', 'maintainedBy', 'pid_graph:E9F59780', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:1426D6CA', 'maintainedBy', 'pid_graph:F27B00BB', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:155292FA', 'maintainedBy', 'pid_graph:59EEFD5A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:2323CE54', 'maintainedBy', 'pid_graph:207965C142', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:24003AD9', 'maintainedBy', 'pid_graph:C8FDBD1F', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:2D1EACFC', 'maintainedBy', 'pid_graph:1E889631', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:2FF46922', 'maintainedBy', 'pid_graph:4DDAB116', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:3174D6ED', 'maintainedBy', 'pid_graph:A9571FE0', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:37CF6252', 'maintainedBy', 'pid_graph:FD41544A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:3BA1C753', 'maintainedBy', 'pid_graph:59EEFD5A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:3FC02968', 'maintainedBy', 'pid_graph:429CA7F8', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:41989AD1', 'maintainedBy', 'pid_graph:9E7BB9FC', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:46349C90', 'maintainedBy', 'pid_graph:59EEFD5A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:4B0E49ED', 'maintainedBy', 'pid_graph:59EEFD5A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:4E83F34B', 'maintainedBy', 'pid_graph:59EEFD5A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:519CC809', 'maintainedBy', 'pid_graph:D37D8471', NULL, '0000-0002-0255-5101', '10/09/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:58116CCC', 'maintainedBy', 'pid_graph:59EEFD5A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:59FE1DE9', 'maintainedBy', 'pid_graph:3BF14858', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:6D76EE18', 'maintainedBy', 'pid_graph:054361CE', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:718EC1D6', 'maintainedBy', 'pid_graph:2A17A682', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:737A5D64', 'maintainedBy', 'pid_graph:59EEFD5A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:78116557', 'maintainedBy', 'pid_graph:904896D8', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:7A71E8B7', 'maintainedBy', 'pid_graph:53CE0E02', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:7BE009A6', 'maintainedBy', 'pid_graph:054361CE', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:7C7BC94D', 'maintainedBy', 'pid_graph:D37D8471', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:82EFCA7C', 'maintainedBy', 'pid_graph:59EEFD5A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:85BABC2C', 'maintainedBy', 'pid_graph:DC6BCD65', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:85FC6BE0', 'maintainedBy', 'pid_graph:2A17A682', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:8DB69A38', 'maintainedBy', 'pid_graph:59EEFD5A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:8E37FD4E', 'maintainedBy', 'pid_graph:59EEFD5A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:924940FD', 'maintainedBy', 'pid_graph:8DEA6E80', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:93994055', 'maintainedBy', 'pid_graph:DAC9D3C5', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:9DEADEA4', 'maintainedBy', 'pid_graph:59EEFD5A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:A6DD5C860', 'maintainedBy', 'pid_graph:944E57B3', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:A6DD5C860KK', 'maintainedBy', 'pid_graph:24E3904B', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:A6DD5C860KL', 'maintainedBy', 'pid_graph:E89A7B4C', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:A6DD5C860KM', 'maintainedBy', 'pid_graph:9FD58CA9', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:A6DD5C860KN', 'maintainedBy', 'pid_graph:5BBC9973', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:A6DD5C860Y', 'maintainedBy', 'pid_graph:DFAF4C12', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:A6DD5C860Z', 'maintainedBy', 'pid_graph:CCE903B0', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:A8A98608', 'maintainedBy', 'pid_graph:4DDAB116', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:AACA3EAD', 'maintainedBy', 'pid_graph:D5C5C904', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:B0CA7BF7', 'maintainedBy', 'pid_graph:59EEFD5A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:B47A7A965', 'maintainedBy', 'pid_graph:D31A7652', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:BB9EEC03', 'maintainedBy', 'pid_graph:DFAF4C12', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:BDB801FE', 'maintainedBy', 'pid_graph:59EEFD5A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:BF7F2596', 'maintainedBy', 'pid_graph:3A2D478A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:C13D7653', 'maintainedBy', 'pid_graph:1E889631', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:C4194F37', 'maintainedBy', 'pid_graph:5BBC9973', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:C4812562', 'maintainedBy', 'pid_graph:F029F0E1', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:CE5ABC88', 'maintainedBy', 'pid_graph:59EEFD5A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:D20A7975', 'maintainedBy', 'pid_graph:D8569850', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:D6856C2B', 'maintainedBy', 'pid_graph:59EEFD5A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:DF407A05', 'maintainedBy', 'pid_graph:0C19BBEE', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:E0290620', 'maintainedBy', 'pid_graph:4DDAB116', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:E2530971', 'maintainedBy', 'pid_graph:59EEFD5A', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:EF341ECC', 'maintainedBy', 'pid_graph:D37D8471', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:F3C1337F', 'maintainedBy', 'pid_graph:9F0F91A9', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:F8CE087C', 'maintainedBy', 'pid_graph:755F75E4', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:F9C11242', 'maintainedBy', 'pid_graph:E661B1CB', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:FCDAACDB', 'maintainedBy', 'pid_graph:CD515A71', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:FDD1477C', 'maintainedBy', 'pid_graph:D81D00C6', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:FF6511FC', 'maintainedBy', 'pid_graph:A1180017', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:H0C28F52C', 'maintainedBy', 'pid_graph:755F75E4', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:WC92A0EAA', 'maintainedBy', 'pid_graph:V241D2889', NULL, '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Standard_StandardsBody(ID_STD_STB, lod_STD, lodRelation, lodSTB, ID_STD_STB_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:Z90BFDFCF', 'maintainedBy', 'pid_graph:00503110', NULL, '0000-0002-0255-5101', '12/12/2024');
