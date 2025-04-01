-- ------------------------------------------------
-- Version: v1.35
--
-- Description: Migration that introduces the resolved identifier provider view
-- -------------------------------------------------

DROP VIEW IF EXISTS k_Resolved_Identifier_Provider;

CREATE VIEW k_Resolved_Identifier_Provider AS
SELECT DISTINCT ON (k_Identifier.lodIDN) 
    k_Identifier.lodIDN,
    k_Identifier.labelIdentifier,
    'pid_graph:E92B9B49' AS lodact,
    'Provider' AS actor,
    k_Provider.lodPRV,
    k_Provider.labelProvider
FROM k_Identifier
LEFT JOIN k_Manager_Provider ON k_Identifier.lodIDN = k_Manager_Provider.lod_IDN
LEFT JOIN k_Provider ON k_Manager_Provider.lod_PRV = k_Provider.lodPRV;
