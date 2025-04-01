-- ------------------------------------------------
-- Version: v1.20
--
-- Description: Migration that introduces the institution type institution relation
-- -------------------------------------------------

CREATE TABLE k_Institution_TypeInstitution (
    ID_INS_TIN integer,
    lodINS character varying(255) NOT NULL,
    lodRelation character varying(255),
    lodTIN character varying(255),
    populatedBy character varying(255),
    lastTouch character varying(255),
    PRIMARY KEY (lodINS, lodTIN),
    FOREIGN KEY (lodINS) REFERENCES k_Institution(lodINS) ON DELETE CASCADE,
    FOREIGN KEY (lodTIN) REFERENCES k_Type_Institution(lodTIN) ON DELETE CASCADE
);

