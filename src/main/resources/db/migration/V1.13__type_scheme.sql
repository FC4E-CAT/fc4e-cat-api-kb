-- ------------------------------------------------
-- Version: v1.13
--
-- Description: Migration that introduces the scheme standards relationship
-- -------------------------------------------------

CREATE TABLE k_Type_Scheme (
    IDTSC integer,
    lodTSC character varying(255) NOT NULL,
    typeScheme character varying(255),
    populatedBy character varying(255),
    lastTouch character varying(255),
    PRIMARY KEY (lodTSC)
);

INSERT INTO k_Type_Scheme(IDTSC, lodTSC, typeScheme, populatedBy, lastTouch) VALUES (NULL, 'Internal', 'Internal', '0000-0002-0255-5101', '12-12-2024');
INSERT INTO k_Type_Scheme(IDTSC, lodTSC, typeScheme, populatedBy, lastTouch) VALUES (NULL, 'None', 'None', '0000-0002-0255-5101', '12-12-2024');
INSERT INTO k_Type_Scheme(IDTSC, lodTSC, typeScheme, populatedBy, lastTouch) VALUES (NULL, 'Published', 'Published', '0000-0002-0255-5101', '12-12-2024');
INSERT INTO k_Type_Scheme(IDTSC, lodTSC, typeScheme, populatedBy, lastTouch) VALUES (NULL, 'Standardised', 'Standardised', '0000-0002-0255-5101', '12-12-2024');
INSERT INTO k_Type_Scheme(IDTSC, lodTSC, typeScheme, populatedBy, lastTouch) VALUES (NULL, 'Unknown', 'Unknown', '0000-0002-0255-5101', '12-12-2024');

