-- ------------------------------------------------
-- Version: v1.29
--
-- Description: Migration that introduces the mpa authority relation
-- -------------------------------------------------

CREATE TABLE k_MPA_Authority (
    ID_AUT_MPA integer,
    lod_AUT character varying(255) NOT NULL,
    lodRelation character varying(255),
    lodMPA character varying(255),
    ID_AUT_MPA_V integer,
    populatedBy character varying(255),
    lastTouch character varying(255),
    PRIMARY KEY (lod_AUT, lodMPA),
    FOREIGN KEY (lod_AUT) REFERENCES k_Authority(lodAUT) ON DELETE CASCADE,
    FOREIGN KEY (lodMPA) REFERENCES k_MPA(lodMPA) ON DELETE CASCADE
);

INSERT INTO k_MPA_Authority(ID_AUT_MPA, lod_AUT, lodRelation, lodMPA, ID_AUT_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:4E53874F', 'isSupportedBy', 'pid_graph:98714B4C1', NULL, '0000-0002-0255-5101', '22-01-2025');
INSERT INTO k_MPA_Authority(ID_AUT_MPA, lod_AUT, lodRelation, lodMPA, ID_AUT_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:7F908AED', 'isSupportedBy', 'pid_graph:70E2C260', NULL, '0000-0002-0255-5101', '20-08-2024');
INSERT INTO k_MPA_Authority(ID_AUT_MPA, lod_AUT, lodRelation, lodMPA, ID_AUT_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:7F908AED', 'isSupportedBy', 'pid_graph:28A16295', NULL, '0000-0002-0255-5101', '20-08-2024');
INSERT INTO k_MPA_Authority(ID_AUT_MPA, lod_AUT, lodRelation, lodMPA, ID_AUT_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:7F908AED', 'isSupportedBy', 'pid_graph:16C2E9C0', NULL, '0000-0002-0255-5101', '20-08-2024');
INSERT INTO k_MPA_Authority(ID_AUT_MPA, lod_AUT, lodRelation, lodMPA, ID_AUT_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:7F908AED', 'isSupportedBy', 'pid_graph:67D9332D', NULL, '0000-0002-0255-5101', '20-08-2024');
INSERT INTO k_MPA_Authority(ID_AUT_MPA, lod_AUT, lodRelation, lodMPA, ID_AUT_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:7F908AED', 'isSupportedBy', 'pid_graph:6D2C8457', NULL, '0000-0002-0255-5101', '20-08-2024');
INSERT INTO k_MPA_Authority(ID_AUT_MPA, lod_AUT, lodRelation, lodMPA, ID_AUT_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:7F908AED', 'isSupportedBy', 'pid_graph:290F7B45', NULL, '0000-0002-0255-5101', '20-08-2024');
INSERT INTO k_MPA_Authority(ID_AUT_MPA, lod_AUT, lodRelation, lodMPA, ID_AUT_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:7F908AED', 'isSupportedBy', 'pid_graph:2DC344C5', NULL, '0000-0002-0255-5101', '20-08-2024');
INSERT INTO k_MPA_Authority(ID_AUT_MPA, lod_AUT, lodRelation, lodMPA, ID_AUT_MPA_V, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:7F908AED', 'isSupportedBy', 'pid_graph:14D21F39', NULL, '0000-0002-0255-5101', '20-08-2024');

