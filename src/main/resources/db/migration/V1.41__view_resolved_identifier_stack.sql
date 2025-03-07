-- ------------------------------------------------
-- Version: v1.41
--
-- Description: Migration that introduces the resolved identifier authority view
-- -------------------------------------------------

DROP VIEW IF EXISTS k_Resolved_Identifier_Stack;

CREATE VIEW k_Resolved_Identifier_Stack AS
SELECT lodIDN, labelIdentifier, lodact, actor, lod, label FROM k_Resolved_Identifier_Standard
UNION
SELECT lodIDN, labelIdentifier, lodact, actor, lod, label FROM k_Resolved_Identifier_Authority
UNION
SELECT lodIDN, labelIdentifier, lodact, actor, lodMPA AS lod, labelMPA AS label FROM k_Resolved_Identifier_MPA
UNION
SELECT lodIDN, labelIdentifier, lodact, actor, lodPRV AS lod, labelProvider AS label FROM k_Resolved_Identifier_Provider
UNION
SELECT lodIDN, labelIdentifier, lodact, actor, lod, label FROM k_Resolved_Identifier_Scheme
ORDER BY labelIdentifier;
