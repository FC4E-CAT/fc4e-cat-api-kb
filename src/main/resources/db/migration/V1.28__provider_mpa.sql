-- ------------------------------------------------
-- Version: v1.28
--
-- Description: Migration that introduces the provider mpa relation
-- -------------------------------------------------

CREATE TABLE k_Provider_MPA (
    ID_PRV_MPA integer,
    lod_PRV character varying(255) NOT NULL,
    lodRelation character varying(255),
    lodMPA character varying(255),
    ID_PRV_MPA_V integer,
    populatedBy character varying(255),
    lastTouch character varying(255),
    PRIMARY KEY (lod_PRV, lodMPA),
    FOREIGN KEY (lod_PRV) REFERENCES k_Provider(lodPRV) ON DELETE CASCADE,
    FOREIGN KEY (lodMPA) REFERENCES k_MPA(lodMPA) ON DELETE CASCADE
);

INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:4F922FE1', 'isSupportedBy', 'pid_graph:70E2C260', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:33A4BB68', 'isSupportedBy', 'pid_graph:14D21F39', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:01F7DFBA', 'isSupportedBy', 'pid_graph:14D21F39', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:C794C66B', 'isSupportedBy', 'pid_graph:14D21F39', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:8B3C5C36', 'isSupportedBy', 'pid_graph:14D21F39', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:6FC02CC0', 'isSupportedBy', 'pid_graph:14D21F39', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:B09F8820', 'isSupportedBy', 'pid_graph:14D21F39', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:F23932AE', 'isSupportedBy', 'pid_graph:14D21F39', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:FCECC2D2', 'isSupportedBy', 'pid_graph:14D21F39', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:23DB5BB4', 'isSupportedBy', 'pid_graph:14D21F39', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:A19A5A5C', 'isSupportedBy', 'pid_graph:14D21F39', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:DCD3FC34', 'isSupportedBy', 'pid_graph:14D21F39', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:258448F0', 'isSupportedBy', 'pid_graph:14D21F39', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:D51999D1', 'isSupportedBy', 'pid_graph:14D21F39', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:012DA850', 'isSupportedBy', 'pid_graph:28A16295', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:20ADCB86', 'isSupportedBy', 'pid_graph:28A16295', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:1EE367AE', 'isSupportedBy', 'pid_graph:28A16295', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:B5D02F72', 'isSupportedBy', 'pid_graph:28A16295', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:158F1A3C', 'isSupportedBy', 'pid_graph:28A16295', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:D1DB7F9F', 'isSupportedBy', 'pid_graph:28A16295', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:F29743FC', 'isSupportedBy', 'pid_graph:28A16295', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:D4CCA3D7', 'isSupportedBy', 'pid_graph:28A16295', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:88325889', 'isSupportedBy', 'pid_graph:28A16295', NULL, '0000-0002-0255-5101', '20-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:6498B100', 'isSupportedBy', 'pid_graph:14D21F39', NULL, '0000-0002-0255-5101', '19-08-2024');
INSERT INTO k_Provider_MPA(ID_PRV_MPA, lod_PRV, lodRelation, lodMPA, ID_PRV_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:8217B24E', 'isSupportedBy', 'pid_graph:14D21F39', NULL, '0000-0002-0255-5101', '20-08-2024');



