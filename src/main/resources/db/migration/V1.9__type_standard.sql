-- ------------------------------------------------
-- Version: v1.9
--
-- Description: Migration that introduces the type standard table
-- -------------------------------------------------

CREATE TABLE k_Type_Standard (
    IDTST integer,
    lodTST character varying(255) NOT NULL,
    typeStandard character varying(255),
    populatedBy character varying(255),
    lastTouch character varying(255),
    PRIMARY KEY (lodTST)
);


INSERT INTO k_Type_Standard(IDTST, lodTST, typeStandard, populatedBy, lastTouch) VALUES (NULL, 'Internal', 'Internal', '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Type_Standard(IDTST, lodTST, typeStandard, populatedBy, lastTouch) VALUES (NULL, 'None', 'None', '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Type_Standard(IDTST, lodTST, typeStandard, populatedBy, lastTouch) VALUES (NULL, 'Published', 'Published', '0000-0002-0255-5101', '12/12/2024');
INSERT INTO k_Type_Standard(IDTST, lodTST, typeStandard, populatedBy, lastTouch) VALUES (NULL, 'Standardised', 'Standardised', '0000-0002-0255-5101', '12/12/2024');

