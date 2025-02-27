-- ------------------------------------------------
-- Version: v1.1
--
-- Description: Migration that introduces the type provider table
-- -------------------------------------------------

CREATE TABLE k_Type_Provider (
    IDTPR integer,
    lodTPR character varying(255) NOT NULL,
    typeProvider character varying(255),
    TPR character varying(255),
    descTPR text,
    populatedBy character varying(255),
    lastTouch character varying(255),
    PRIMARY KEY (lodTPR)
);

INSERT INTO k_Type_Provider(IDTPR, lodTPR, typeProvider, TPR, descTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:DB893DE8', 'Country', '0000-0002-0255-5101', '20-08-2024', 'Country', 'Country agency, node, or contact');
INSERT INTO k_Type_Provider(IDTPR, lodTPR, typeProvider, TPR, descTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:FBFDB448', 'Network Member-National Centre', '0000-0002-0255-5101', '20-08-2024', 'Network', 'A network agency or representative');
INSERT INTO k_Type_Provider(IDTPR, lodTPR, typeProvider, TPR, descTPR, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:F1662576', 'Agency', '0000-0002-0255-5101', '20-08-2024', 'Agency', 'Thematic or community agency, consortium');

ALTER TABLE k_Provider
ADD CONSTRAINT fk_provider_type
FOREIGN KEY (lodTPR)
REFERENCES k_Type_Provider(lodTPR)
ON DELETE CASCADE;