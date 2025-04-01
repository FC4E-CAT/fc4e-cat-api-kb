-- ------------------------------------------------
-- Version: v1.18
--
-- Description: Migration that introduces the type institution table
-- -------------------------------------------------

CREATE TABLE k_Type_Institution (
    IDTIN integer,
    lodTIN character varying(255) NOT NULL,
    typeInstitution character varying(255),
    populatedBy character varying(255),
    lastTouch character varying(255),
    PRIMARY KEY (lodTIN)
);