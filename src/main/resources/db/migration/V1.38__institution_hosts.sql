-- ------------------------------------------------
-- Version: v1.38
--
-- Description: Migration that introduces the institution hosts table
-- -------------------------------------------------

CREATE TABLE k_Institution_Hosts (
    IDINS_H integer,
    lodINS character varying(255) NOT NULL,
    labelResolver character varying(255),
    tableSource character varying(255),
    lodHST character varying(255),
    lodINS_H_V character varying(255),
    populatedBy character varying(255),
    lastTouch character varying(255),
    PRIMARY KEY (lodHST),
    FOREIGN KEY (lodINS) REFERENCES k_Institution(lodINS) ON DELETE CASCADE
);
