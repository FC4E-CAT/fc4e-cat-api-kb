-- ------------------------------------------------
-- Version: v1.32
--
-- Description: Migration that introduces the identifier resolution relation
-- -------------------------------------------------

CREATE TABLE k_Identifier_Resolution (
    lodIdentifier character varying(255) NOT NULL,
    Identifier character varying(255),
    Resolvers integer,
    Topology character varying(255),
    APIs integer,
    MetaResolver character varying(255),
    Regex double precision,
    NamespaceType_ character varying(255),
    Unique_ character varying(255),
    Persistent_ character varying(255),
    Resolvable_ character varying(255),
    GUPRI_ character varying(255),
    Monitor character varying(255),
    Check_ double precision,
    PRIMARY KEY (lodIdentifier),
    FOREIGN KEY (lodIdentifier) REFERENCES k_Identifier(lodIDN) ON DELETE CASCADE
);


INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:016841FF', 'LCCN', 1, 'Centralised', 1, 'https://pidmr.argo.grnet.gr/', 1, 'Semantic Prefix', 'Globally Unique', 'Explicit', 'Direct', 'GUPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:025992EB', 'EAN13', 1, 'Centralised', 1, 'https://pidmr.argo.grnet.gr/', 1, 'No Prefix', 'Namespace Unique', 'Explicit', 'Direct', '-UPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:03A715EA', 'arXiv', 1, 'Centralised', 1, 'https://identifiers.org/, https://pidmr.argo.grnet.gr/ ', 1, 'No Prefix', 'Namespace Unique', 'Implicit', 'Direct', '-UṕRi.png', '797637034', NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:03A715EA1', 'Bibliographic Reference Code (en)', 1, 'Centralised', 1, 'https://pidmr.argo.grnet.gr/', 1, 'Semantic Prefix', 'Namespace Unique', 'Implicit', 'Direct', '-UṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:075D8338', 'PubChem BioAssay DB ID', 1, 'Centralised', 1, NULL, 1, 'No Prefix', 'Locally Unique', 'Explicit', 'Direct', '-üPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:08629E50', 'PMID', 1, 'Centralised', 0, NULL, 1, 'No Prefix', 'Locally Unique', 'Implicit', 'Direct', '-üṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:08EE6DB9', 'OMID', 1, 'Centralised', 1, 'https://identifiers.org/', 1, 'No Prefix', 'Namespace Unique', 'Implicit', 'Direct', '-UṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:0D27745F', 'RAID', 1, 'Cascaded', 0, 'https://pidmr.argo.grnet.gr/', 0, 'No Prefix', 'Globally Unique', 'Explicit', 'Direct', 'GUPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:0E85921A', 'IGSN', 1, 'Cascaded', 1, 'https://identifiers.org/', 1, 'Static Prefix', 'Globally Unique', 'Explicit', 'Direct', 'GUPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:109F4044', 'ScopusAuthorID', 1, 'Centralised', 1, NULL, 1, 'No Prefix', 'Locally Unique', 'Implicit', 'Direct', '-üṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:10C00601', 'GDS ID', 1, 'Centralised', 1, NULL, 1, 'Static Prefix', 'Locally Unique', 'Implicit', 'Direct', '-üṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:152D5274', 'ORCID', 1, 'Centralised', 1, 'https://identifiers.org/', 1, 'No Prefix', 'Namespace Unique', 'Explicit', 'Direct', '-UPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:15BEDB40', 'ARK', 2, 'Distributed', 1, 'https://identifiers.org/, https://pidmr.argo.grnet.gr/ ', 2, 'Semantic Prefix', 'Globally Unique', 'Explicit', 'Direct', 'GUPRi.png', '797636982', NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:187B413B', 'PSSM-ID', 1, 'Centralised', 1, NULL, 1, 'No Prefix', 'Locally Unique', 'Explicit', 'Direct', '-üPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:1D9178F5', 'TaxID', 1, 'Centralised', 0, NULL, 1, 'No Prefix', 'Locally Unique', 'Implicit', 'Direct', '-üṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:1F0B6419', 'RIN', 1, 'Centralised', 0, NULL, 1, 'Static Prefix', 'Namespace Unique', 'Implicit', 'Direct', '-UṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:22104FE0', 'PubMed SRA DB ID', 1, 'Centralised', 0, NULL, 1, 'Static Prefix', 'Locally Unique', 'Explicit', 'Direct', '-üPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:27D128A4', 'PubChem Compound DB ID', 1, 'Centralised', 1, NULL, 1, 'No Prefix', 'Locally Unique', 'Explicit', 'Direct', '-üPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:2EAAEA03', 'IdRef ID/SUDOC', 1, 'Centralised', 1, NULL, 1, 'No Prefix', 'Locally Unique', 'Implicit', 'Direct', '-üṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:3E6F3EE6', 'DOI', 2, 'Cascaded', 1, 'https://pidmr.argo.grnet.gr/', 1, 'Semantic Prefix', 'Globally Unique', 'Explicit', 'Direct', 'GUPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:3FA62023', 'ePIC', 1, 'Cascaded', 1, 'https://pidmr.argo.grnet.gr/', 1, 'Semantic Prefix', 'Globally Unique', 'Explicit', 'Direct', 'GUPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:42740FD8', 'Ringgold ID', 1, 'Centralised', 1, NULL, 1, 'No Prefix', 'Locally Unique', 'Implicit', 'Direct', '-üṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:4502C312', 'URN:ISMN', 1, 'Centralised', 0, NULL, 1, 'No Prefix', 'Namespace Unique', 'Explicit', 'Indirect', '-UPři.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:47118C40', 'ResearcherID', 1, 'Centralised', 1, NULL, 1, 'No Prefix', 'Locally Unique', 'Implicit', 'Direct', '-üṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:4A58E440', 'Protein GI number        ', 1, 'Centralised', 1, NULL, 1, 'No Prefix', 'Locally Unique', 'Explicit', 'Direct', '-üPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:4A58E4401', 'github', 1, 'Centralised', 1, 'https://identifiers.org/', 1, 'No Prefix', 'Namespace Unique', 'Implicit', 'Direct', '-UṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:4A58E4402', 'GitLab', 1, 'Centralised', 1, 'https://identifiers.org/', 1, 'No Prefix', 'Namespace Unique', 'Implicit', 'Direct', '-UṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:50E7B5FE', 'NLM Catalog ID	', 1, 'Centralised', 0, NULL, 1, 'No Prefix', 'Locally Unique', 'Explicit', 'Direct', '-üPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:52184C71', 'QID / WDQID', 1, 'Centralised', 1, 'https://pidmr.argo.grnet.gr/', 1, 'Semantic Prefix', 'Globally Unique', 'Implicit', 'Direct', 'GUṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:52A9C539', 'dbGaP ID', 1, 'Centralised', 0, 'https://pidmr.argo.grnet.gr/', 1, 'Static Prefix', 'Locally Unique', 'Explicit', 'Direct', '-üPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:52EBCE9D', 'URN:ISBN', 1, 'Centralised', 1, 'https://pidmr.argo.grnet.gr/', 1, 'No Prefix', 'Namespace Unique', 'Explicit', 'Direct', '-UPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:59B443C3', 'JuFo-id', 1, 'Centralised', 1, NULL, 1, 'No Prefix', 'Namespace Unique', 'Implicit', 'Direct', '-UṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:5AB84DF2', 'eISSN', 1, 'Centralised', 1, NULL, 1, 'No Prefix', 'Globally Unique', 'Explicit', 'Direct', 'GUPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:5CEA29B9', 'GRID', 1, 'Centralised', 0, 'https://identifiers.org/', 1, 'Static Prefix', 'Namespace Unique', 'Implicit', 'Direct', '-UṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:6081C2D5', 'EIDR', 1, 'Cascaded', 1, NULL, 1, 'Semantic Prefix', 'Globally Unique', 'Explicit', 'Direct', 'GUPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:6AAA1ABD', 'RoR', 1, 'Cascaded', 1, 'https://identifiers.org/, https://pidmr.argo.grnet.gr/ ', 1, 'No Prefix', 'Namespace Unique', 'Explicit', 'Direct', '-UPRi.png', '797632203', NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:6AE88038', 'OpenCitations Corpus', 1, 'Centralised', 0, 'https://identifiers.org/', 1, 'No Prefix', 'Namespace Unique', 'Implicit', 'Direct', '-UṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:6FA60579', 'InChI', 1, 'Centralised', 1, 'https://pidmr.argo.grnet.gr/', 1, 'Static Prefix', 'Namespace Unique', 'Explicit', 'Direct', '-UPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:710BC55E', 'URN:ISNI', 1, 'Centralised', 1, 'https://identifiers.org/, https://pidmr.argo.grnet.gr/', 1, 'No Prefix', 'Namespace Unique', 'Explicit', 'Direct', '-UPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:73B0A225', 'Handle', 1, 'Cascaded', 1, NULL, 1, 'No Prefix', 'Globally Unique', 'Explicit', 'Direct', 'GUPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:7725DE2B', 'W3ID', 1, 'Centralised', 0, NULL, 1, 'No Prefix', NULL, 'Explicit', 'Direct', 'GUPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:77FF1083', 'GND', 1, 'Centralised', 1, 'https://identifiers.org/, https://pidmr.argo.grnet.gr/', 1, 'No Prefix', 'Namespace Unique', 'Implicit', 'Direct', '-UṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:7D3DC0E1', 'VIAF', 1, 'Centralised', 1, 'https://identifiers.org/', 1, 'No Prefix', 'Namespace Unique', 'Explicit', 'Direct', '-UPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:7D9E4E44', 'Magnet', 1, 'Centralised', 0, NULL, 1, 'Static Prefix', 'Namespace Unique', 'Implicit', 'Direct', '-UṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:7E709E591', 'URN:NBN:CH', 1, 'Decentralised', 1, 'https://identifiers.org/, https://pidmr.argo.grnet.gr/', 1, 'Static Prefix', 'Namespace Unique', 'Explicit', 'Direct', '-UPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:7E709E592', 'URN:NBN:DE', 1, 'Decentralised', 1, 'https://identifiers.org/, https://pidmr.argo.grnet.gr/', 1, 'Static Prefix', 'Namespace Unique', 'Explicit', 'Direct', '-UPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:7E709E593', 'URN:NBN:FI', 1, 'Decentralised', 1, 'https://identifiers.org/, https://pidmr.argo.grnet.gr/', 1, 'Static Prefix', 'Namespace Unique', 'Explicit', 'Direct', '-UPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:7E709E594', 'URN:NBN:NL', 1, 'Decentralised', 1, 'https://identifiers.org/, https://pidmr.argo.grnet.gr/', 1, 'Static Prefix', 'Namespace Unique', 'Explicit', 'Direct', '-UPRi.png', '797632564', NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:7EBD4614', 'URN:ISRC', 2, 'Centralised', 0, NULL, 2, 'No Prefix', 'Namespace Unique', 'Explicit', 'Indirect', '-UPři.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:83FC72F3', 'IMDb company ID', 1, 'Centralised', 1, NULL, 1, 'Semantic Prefix', 'Locally Unique', 'Implicit', 'Direct', '-üṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:88E37094', 'BusinessID', 1, 'Centralised', 1, NULL, 1, 'No Prefix', 'Locally Unique', 'Implicit', 'Direct', '-üṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:8930C278', 'PubChem Substance DB ID', 1, 'Centralised', 1, NULL, 1, 'No Prefix', 'Locally Unique', 'Explicit', 'Direct', '-üPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:8A464A0E', 'ISLRN', 1, 'Centralised', 1, 'https://pidmr.argo.grnet.gr/', 1, 'No Prefix', 'Namespace Unique', 'Implicit', 'Direct', '-UṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:8A580D4C', 'SWHID', 1, 'Centralised', 1, 'https://pidmr.argo.grnet.gr/', 1, 'Static Prefix, Unique Hash', 'Globally Unique', 'Explicit', 'Direct', 'GUPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:8C3CC433', 'EU PIC', 1, 'Centralised', 0, NULL, 1, 'No Prefix', 'Locally Unique', 'Implicit', 'Indirect', '-üṕři.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:8FDADD4C', 're3data', 1, 'Centralised', 0, 'https://identifiers.org/', 1, 'Static Prefix', 'Namespace Unique', 'Implicit', 'Direct', '-UṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:92768060', 'URN:LSID', 1, 'Centralised', 1, NULL, 1, 'Static Prefix', 'Namespace Unique', 'Explicit', 'Direct', '-UPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_)
VALUES ('pid_graph:962AFA12', 'ICD', 1, 'Centralised', 1, 'https://identifiers.org/', 1, 'No Prefix', 'Namespace Unique', 'Implicit', 'Direct', '-UṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:986D97DF', 'SBN/ICCU', 1, 'Centralised', 1, NULL, 1, 'No Prefix', 'Locally Unique', 'Explicit', 'Direct', '-üPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:998B7874', 'DCO-ID', 1, 'Discontinued', 1, NULL, 0, 'No Prefix', 'Globally Unique', 'Implicit', 'Indirect', 'GU--i.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:9C827E94', 'OpenURL', 1, 'Distributed', 1, NULL, 1, 'Static Prefix', 'Globally Unique', 'Implicit', 'Indirect', 'GUṕři.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:9D46195A', 'IMDb title ID', 1, 'Centralised', 1, NULL, 1, 'Semantic Prefix', 'Locally Unique', 'Implicit', 'Direct', '-üṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:9FF848E5', 'URN:ISSN', 1, 'Centralised', 1, 'https://identifiers.org/, https://pidmr.argo.grnet.gr/', 1, 'No Prefix', 'Namespace Unique', 'Explicit', 'Direct', '-UPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:AB1807F6', 'OCLC Control Number', 1, 'Centralised', 1, NULL, 1, 'No Prefix', 'Locally Unique', 'Explicit', 'Direct', '-üPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:AC2CDAA9', 'WOS', 1, 'Centralised', 0, 'https://identifiers.org/', 1, 'No Prefix', 'Namespace Unique', 'Implicit', 'Direct', '-UṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:AE530285', 'PopSet ID', 1, 'Centralised', 0, NULL, 1, 'No Prefix', 'Locally Unique', 'Explicit', 'Direct', '-üPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:B0DD2B6E', 'GEO ID', 1, 'Centralised', 1, NULL, 1, 'No Prefix', 'Locally Unique', 'Explicit', 'Direct', '-üPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:B36773C9', 'MeSH ID', 1, 'Centralised', 1, NULL, 1, 'No Prefix', 'Locally Unique', 'Implicit', 'Direct', '-üṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:B7EB7BAA', 'COL', 1, 'Centralised', 1, 'https://identifiers.org/, https://pidmr.argo.grnet.gr/', 1, 'No Prefix', 'Namespace Unique', 'Explicit', 'Direct', '-UPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:B9A4AB49', 'Gene ID', 1, 'Centralised', 1, NULL, 1, 'No Prefix', 'Namespace Unique', 'Explicit', 'Direct', '-UPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_)
VALUES ('pid_graph:BE0AA447', 'Wikipedia', 1, 'Centralised', 1, 'https://identifiers.org/', 1, 'No Prefix', 'Globally Unique', 'Implicit', 'Direct', 'GUṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:BFEB0A72', 'UPC', 1, 'Federated', 1, NULL, 1, 'No Prefix', 'Globally Unique', 'Implicit', 'Direct', 'GUṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:C2989F23', 'URN:OID', 1, 'Decentralised', 0, 'https://identifiers.org/', 1, 'No Prefix', 'Namespace Unique', 'Explicit', 'Direct', '-UPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:C2BEAE03', 'GeoNames ID', 1, 'Centralised', 1, NULL, 1, 'No Prefix', 'Locally Unique', 'Implicit', 'Direct', '-üṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:C454BB2B', 'Toolkit ID', 1, 'Centralised', 0, NULL, 1, 'No Prefix', 'Locally Unique', 'Explicit', 'Direct', '-üPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:C6B514CF', 'HAL article ID', 1, 'Centralised', 1, NULL, 1, 'No Prefix', 'Namespace Unique', 'Explicit', 'Direct', '-UPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:C7CE618B', 'XRI', 1, 'Centralised', 0, NULL, 1, 'No Prefix', 'Namespace Unique', 'Implicit', 'Direct', '-UṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:C9B802B5', 'SF-edu-ID', 1, 'Centralised', 0, NULL, 0, 'No Prefix', 'Locally Unique', 'Explicit', 'Indirect', '-üPři.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:CB69320B', 'dbVar ID', 1, 'Centralised', 1, NULL, 1, 'Static Prefix', 'Locally Unique', 'Explicit', 'Direct', '-üPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_)
VALUES ('pid_graph:D0FEC2B9', 'Protein Cluster DB ID', 1, 'Centralised', 0, NULL, 1, 'No Prefix', 'Locally Unique', 'Explicit', 'Direct', '-üPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:D1BA9B24', 'dPID', 2, 'Distributed', 1, 'https://identifiers.org/, https://pidmr.argo.grnet.gr/ ', 1, 'Semantic Prefix, Unique Hash', 'Globally Unique', 'Implicit', 'Indirect', 'GUṕři.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:D2BC44A7', 'InChiKey', 1, 'Centralised', 0, 'https://identifiers.org/', 1, 'Unique Hash', 'Globally Unique', 'Explicit', 'Direct', 'GUPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:D75629BE', 'PURL', 1, 'Centralised', 0, NULL, 0, 'No Prefix', 'Globally Unique', 'Implicit', 'Direct', 'GUṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:D800044E', 'Genome ID', 1, 'Centralised', 1, 'https://pidmr.argo.grnet.gr/', 1, 'Static Prefix', 'Namespace Unique', 'Explicit', 'Direct', '-UPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:D8E9EA2D', 'PubMed Central DB ID', 1, 'Centralised', 0, NULL, 1, 'Static Prefix', 'Locally Unique', 'Explicit', 'Direct', '-üPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:D9D0AD30', 'PubMed SNP DB ID', 1, 'Centralised', 1, NULL, 1, 'Static Prefix', 'Locally Unique', 'Explicit', 'Direct', '-üPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:DDB8E5B0', 'IMDb name ID', 1, 'Centralised', 1, NULL, 1, 'Semantic Prefix', 'Globally Unique', 'Implicit', 'Direct', 'GUṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:DE9F6BF4', 'URN:ISAN', 1, 'Centralised', 1, 'https://identifiers.org/, https://pidmr.argo.grnet.gr/', 1, 'No Prefix', 'Namespace Unique', 'Explicit', 'Direct', '-UPRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_)
VALUES ('pid_graph:F00A6677', 'Bitbucket', 1, 'Centralised', 1, 'https://identifiers.org/', 1, 'No Prefix', 'Namespace Unique', 'Implicit', 'Direct', '-UṕRi.png', NULL, NULL);
INSERT INTO k_Identifier_Resolution(lodIdentifier, Identifier, Resolvers, Topology, APIs, MetaResolver, Regex, NamespaceType_, Unique_, Persistent_, Resolvable_, GUPRI_, Monitor, Check_) 
VALUES ('pid_graph:FE96C149', 'MMDB-ID', 1, 'Centralised', 0, NULL, 0, 'No Prefix', 'Locally Unique', 'Explicit', 'Indirect', '-üP-i.png', NULL, NULL);
