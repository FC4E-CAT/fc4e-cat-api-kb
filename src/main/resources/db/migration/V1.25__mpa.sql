-- ------------------------------------------------
-- Version: v1.25
--
-- Description: Migration that introduces the institution table
-- -------------------------------------------------

CREATE TABLE k_MPA (
    IDMPA integer,
    lodMPA character varying(255) NOT NULL,
    MPA character varying(255),
    labelMPA character varying(255),
    descMPA text,
    lodMPA_V character varying(255),
    startDate timestamp with time zone,
    populatedBy character varying(255),
    lastTouch character varying(255),
    PRIMARY KEY (lodMPA)
);

INSERT INTO k_MPA(IDMPA, lodMPA, MPA, labelMPA, descMPA, lodMPA_V, startDate,populatedBy, lastTouch) VALUES (NULL, 'pid_graph:98714B4C1', 'N/A', 'Not Applicable', 'Multi-Provider Agencies are only applicable for some Providers linked to DONA.', NULL, NULL, '0000-0002-0255-5101', '22-01-2025');
INSERT INTO k_MPA(IDMPA, lodMPA, MPA, labelMPA, descMPA, lodMPA_V, startDate,populatedBy, lastTouch) VALUES (NULL, 'pid_graph:70E2C260', 'CNRI', 'Corporation for National Research Initiatives (CNRI)', 'Corporation for National Research Initiatives (CNRI) is a not-for-profit organization formed in 1986 to undertake, foster, and promote research in the public interest. Activities center around strategic development of network-based information technologies, providing leadership and funding for information infrastructure research and development.', NULL, NULL, '0000-0002-0255-5101', '20-08-2024');
INSERT INTO k_MPA(IDMPA, lodMPA, MPA, labelMPA, descMPA, lodMPA_V, startDate,populatedBy, lastTouch) VALUES (NULL, 'pid_graph:28A16295', 'ePIC', 'PID Consortium', 'ePIC was founded in 2009 by a consortium of European partners in order to provide PID services for the European Research Community, based on the handle system', NULL, NULL, '0000-0002-0255-5101', '20-08-2024');
INSERT INTO k_MPA(IDMPA, lodMPA, MPA, labelMPA, descMPA, lodMPA_V, startDate,populatedBy, lastTouch) VALUES (NULL, 'pid_graph:16C2E9C0', 'CTIC', 'CTIC', 'The Commission was established to regulate, monitor and empower the communications & IT sector as it is one of the most prominent sectors which support the development and prosperity of the Kingdom of Saudi Arabia.', NULL, NULL, '0000-0002-0255-5101', '20-08-2024');
INSERT INTO k_MPA(IDMPA, lodMPA, MPA, labelMPA, descMPA, lodMPA_V, startDate,populatedBy, lastTouch) VALUES (NULL, 'pid_graph:67D9332D', 'MISAVA', 'https://misava.co.za/', 'The MISAVA Agency for Digital Identifiers (MISADI) became an MPA effective as of 16th October 2016', NULL, NULL, '0000-0002-0255-5101', '20-08-2024');
INSERT INTO k_MPA(IDMPA, lodMPA, MPA, labelMPA, descMPA, lodMPA_V, startDate,populatedBy, lastTouch) VALUES (NULL, 'pid_graph:6D2C8457', 'SAS', 'Smart Africa Alliance', 'Smart Africa is a bold and innovative commitment from African Heads of State and Government to accelerate sustainable socio-economic development on the continent', NULL, NULL, '0000-0002-0255-5101', '20-08-2024');
INSERT INTO k_MPA(IDMPA, lodMPA, MPA, labelMPA, descMPA, lodMPA_V, startDate,populatedBy, lastTouch) VALUES (NULL, 'pid_graph:290F7B45', 'TIA', 'Tunisian Internet Alliance', 'ATI (Tunisie Internet) is the historic internet operator in Tunisia, working for the promotion and development of the internet since 1996. Today, it is an internet access provider and a national host.', NULL, NULL, '0000-0002-0255-5101', '20-08-2024');
INSERT INTO k_MPA(IDMPA, lodMPA, MPA, labelMPA, descMPA, lodMPA_V, startDate,populatedBy, lastTouch) VALUES (NULL, 'pid_graph:2DC344C5', 'RosTel', 'RosTelecom', 'PJSC “Rostelecom” is the largest integrated digital services and products provider in Russia, operating in all segments of the telecommunications market. ', NULL, NULL, '0000-0002-0255-5101', '20-08-2024');
INSERT INTO k_MPA(IDMPA, lodMPA, MPA, labelMPA, descMPA, lodMPA_V, startDate,populatedBy, lastTouch) VALUES (NULL, 'pid_graph:14D21F39', 'DOIF', 'International DOI Foundation', 'The DOI Foundation is a not-for-profit organization. We govern the Digital Object Identifier (DOI) system on behalf of the agencies who manage DOI registries and provide services to their respective communities. We are the registration authority for the ISO standard (ISO 26324) for the DOI system and we are governed by our Registration Agencies.', NULL, NULL, '0000-0002-0255-5101', '20-08-2024');

