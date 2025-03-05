-- ------------------------------------------------
-- Version: v1.16
--
-- Description: Migration that introduces the type case table
-- -------------------------------------------------

CREATE TABLE k_Type_Case (
    ID_TCS integer,
    lodTCS character varying(255) NOT NULL,
    labelTypeCase character varying(255),
    descTypeCase text,
    populatedBy character varying(255),
    lastTouch character varying(255),
    PRIMARY KEY (lodTCS)
);

INSERT INTO k_Type_Case(ID_TCS, lodTCS, labelTypeCase, descTypeCase, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:7A2B72663', 'Verfiied AI Recommendation', 'Prompt-based LLM requests for information on recommended use of PIDs, verified by a data curator', '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Type_Case(ID_TCS, lodTCS, labelTypeCase, descTypeCase, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:550BFEC9', 'Community Expectations', 'Community expectations: requirements expressed in FAIR, TRUST, CARE, etc. (rarely specific enough for identifiers)', '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Type_Case(ID_TCS, lodTCS, labelTypeCase, descTypeCase, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:A8AF2283', 'Community Survey', 'Community surveys and opinions expressed in published literature', '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Type_Case(ID_TCS, lodTCS, labelTypeCase, descTypeCase, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:7A2B7266', 'Community Recommendation', 'Community consensus published in e.g. RDA outputs', '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Type_Case(ID_TCS, lodTCS, labelTypeCase, descTypeCase, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:D110CBF8', 'PID Strategy', 'Strategy: documents that identify a need and express an intention to recommend or mandate the use of a PID', '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Type_Case(ID_TCS, lodTCS, labelTypeCase, descTypeCase, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:1BBE1B72', 'PID Roadmap', 'Roadmap: an implementation plan for these intentions or addressing the need', '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Type_Case(ID_TCS, lodTCS, labelTypeCase, descTypeCase, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:4667A533', 'PID or Data Policy', 'Policy: a description of measures that are mandated or strongly recommended', '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Type_Case(ID_TCS, lodTCS, labelTypeCase, descTypeCase, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:CD87C628', 'Standard', 'Standard: a measure that requires use of a specific identifier for a specific purpose', '0000-0002-0255-5101', '29-01-2025');
INSERT INTO k_Type_Case(ID_TCS, lodTCS, labelTypeCase, descTypeCase, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:7A2B72661', 'Provider Recommendation', 'Use of PIDs indicated by the provider directly', '0000-0002-0255-5101', '29-01-2025');
