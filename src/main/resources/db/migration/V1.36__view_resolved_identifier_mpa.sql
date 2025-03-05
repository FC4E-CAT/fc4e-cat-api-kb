-- ------------------------------------------------
-- Version: v1.36
--
-- Description: Migration that introduces the resolved identifier mpa view
-- -------------------------------------------------

DROP VIEW IF EXISTS k_Resolved_Identifier_MPA;

CREATE VIEW k_Resolved_Identifier_MPA AS
SELECT DISTINCT ON (rip.lodIDN)
    rip.lodIDN,
    rip.labelIdentifier,
    'pid_graph:7835EF43' AS lodact,
    'MPA' AS actor,
    mpa.lodMPA,
    mpa.labelMPA
FROM k_Provider p
LEFT JOIN k_Provider_MPA pm ON p.lodPRV = pm.lod_PRV
LEFT JOIN k_MPA mpa ON pm.lodMPA = mpa.lodMPA
LEFT JOIN k_Resolved_Identifier_Provider rip ON p.lodPRV = rip.lodPRV;