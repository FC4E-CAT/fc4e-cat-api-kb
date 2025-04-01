-- ------------------------------------------------
-- Version: v1.44
--
-- Description: Migration that introduces the resolved identifier authority view
-- -------------------------------------------------

CREATE VIEW k_Properties_Stack_Combined AS
SELECT
    k_Manager_Provider.lod_IDN,
    'hasProperty' AS lodRelation,
    'Managers' AS labelProperty,
    CAST(count(k_Manager_Provider.lodMAN) AS character varying) AS Value_
FROM k_Manager_Provider
GROUP BY k_Manager_Provider.lod_IDN
UNION
SELECT
    k_Identifier_Property.lodIDN AS lod_IDN,
    k_Identifier_Property.lodRelation,
    k_Property.labelProperty,
    k_Identifier_Property.Value_
FROM k_Identifier_Property
JOIN k_Property
ON k_Identifier_Property.lodPRP = k_Property.lodPRP;
