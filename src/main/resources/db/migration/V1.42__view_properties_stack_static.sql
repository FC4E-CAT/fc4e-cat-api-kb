-- ------------------------------------------------
-- Version: v1.42
--
-- Description: Migration that introduces the resolved identifier authority view
-- -------------------------------------------------

DROP VIEW IF EXISTS k_Properties_Stack_Static;

CREATE VIEW k_Properties_Stack_Static AS
SELECT lodIDN, lodRelation, labelProperty, Value_
FROM k_Identifier_Property
JOIN k_Property ON k_Identifier_Property.lodPRP = k_Property.lodPRP;