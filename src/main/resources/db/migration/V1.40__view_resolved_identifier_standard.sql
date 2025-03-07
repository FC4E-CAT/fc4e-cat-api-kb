-- ------------------------------------------------
-- Version: v1.40
--
-- Description: Migration that introduces the resolved identifier authority view
-- -------------------------------------------------

DROP VIEW IF EXISTS k_Resolved_Identifier_Standard;

CREATE VIEW k_Resolved_Identifier_Standard AS
SELECT DISTINCT ON (id.lodIDN)
    id.lodIDN,
    id.labelIdentifier,
    '(to be registered)' AS lodact,
    'Standard' AS actor,
    std.lodSTD AS lod,
    std.labelStandard AS label
FROM k_Identifier id
LEFT JOIN k_Identifier_Scheme_Standard iss ON id.lodIDN = iss.lodIDN
LEFT JOIN k_Standard std ON iss.lodSTD = std.lodSTD;