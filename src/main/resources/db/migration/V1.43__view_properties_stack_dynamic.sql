-- ------------------------------------------------
-- Version: v1.43
--
-- Description: Migration that introduces the properties stack dynamic view
-- -------------------------------------------------

DROP VIEW IF EXISTS k_Properties_Stack_Dynamic;

CREATE VIEW k_Properties_Stack_Dynamic AS
SELECT lod_IDN,
       'hasProperty' AS lodRelation,
       'Managers' AS labelProperty,
       COUNT(lodMAN) AS Value_
FROM k_Manager_Provider
GROUP BY lod_IDN, lodRelation, labelProperty;
