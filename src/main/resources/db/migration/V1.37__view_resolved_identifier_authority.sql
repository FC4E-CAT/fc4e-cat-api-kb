-- ------------------------------------------------
-- Version: v1.37
--
-- Description: Migration that introduces the resolved identifier authority view
-- -------------------------------------------------

DROP VIEW IF EXISTS k_Resolved_Identifier_Authority;

CREATE VIEW k_Resolved_Identifier_Authority AS
SELECT
    rip.lodIDN,
    rip.labelIdentifier,
    'pid_graph:1A718108' AS lodact,
    'Authority' AS actor,
    auth.lodAUT AS lod,
    auth.labelAuthority AS label
FROM k_Authority auth
    RIGHT JOIN (k_Provider prv
    LEFT JOIN k_Provider_Authority pa ON prv.lodPRV = pa.lod_PRV) ON auth.lodAUT = pa.lodAUT
    JOIN k_Resolved_Identifier_Provider rip ON prv.lodPRV = rip.lodPRV;
