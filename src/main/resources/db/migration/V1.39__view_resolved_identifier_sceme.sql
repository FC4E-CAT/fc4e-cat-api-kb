-- ------------------------------------------------
-- Version: v1.39
--
-- Description: Migration that introduces the resolved identifier authority view
-- -------------------------------------------------

DROP VIEW IF EXISTS k_Resolved_Identifier_Scheme;

CREATE VIEW k_Resolved_Identifier_Scheme AS
SELECT DISTINCT ON (id.lodIDN)
    id.lodIDN,
    id.labelIdentifier,
    'pid_graph:0E00C332' AS lodact,
    'Scheme' AS actor,
    sch.lodSCH AS lod,
    sch.labelScheme AS label
FROM k_Identifier id
LEFT JOIN k_Identifier_Scheme_Standard iss ON id.lodIDN = iss.lodIDN
LEFT JOIN k_Scheme sch ON iss.lodSCH = sch.lodSCH;