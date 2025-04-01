-- ------------------------------------------------
-- Version: v1.2
--
-- Description: Migration that introduces the provider mpa relation
-- -------------------------------------------------

CREATE TABLE k_Institution_Resolver (
    ID_INS_RES integer,
    lod_RES character varying(255) NOT NULL,
    lodRelation character varying(255),
    lodINS character varying(255),
    populatedBy character varying(255),
    lastTouch character varying(255),
    PRIMARY KEY (lod_RES, lodINS),
    FOREIGN KEY (lod_RES) REFERENCES k_Resolver(lodRES) ON DELETE CASCADE,
    FOREIGN KEY (lodINS) REFERENCES k_Institution(lodINS) ON DELETE CASCADE
);

INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:P9A7C46D0', 'isHostedBy', 'pid_graph:IBC603A2A', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:PB5C240AF', 'isHostedBy', 'pid_graph:I48D43ACE', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R06525948', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R0B40D0C7', 'isHostedBy', 'pid_graph:I77FFAEEA', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R0DF31EE3', 'isHostedBy', 'pid_graph:I465CF331', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R1460583C', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R15C35878', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R15D558E5', 'isHostedBy', 'pid_graph:ICDF83ECB', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R19236E0C', 'isHostedBy', 'pid_graph:IA2B22BFE', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R1A56CBB2', 'isHostedBy', 'pid_graph:IC57E1818', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R23025398', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R2489E74F', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R258C8209', 'isHostedBy', 'pid_graph:I46AB3861', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R274AD5FF', 'isHostedBy', 'pid_graph:I5DC6F634', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R284D8E0C', 'isHostedBy', 'pid_graph:I68DFA1DC', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R28929F85', 'isHostedBy', 'pid_graph:I15E5F5D6', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R28D87F1D', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R2B9D9135', 'isHostedBy', 'pid_graph:ID7AF8A78', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R2BE47A37', 'isHostedBy', 'pid_graph:IE2346ACA', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R2C585D33', 'isHostedBy', 'pid_graph:I4D47D596', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R2FD9E705', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R33431821', 'isHostedBy', 'pid_graph:ID95873B6', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R35AAB00B', 'isHostedBy', 'pid_graph:IBF773A9F', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R35AB3459', 'isHostedBy', 'pid_graph:IC139E854', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R3666E047', 'isHostedBy', 'pid_graph:IE2346ACA', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R369A4FAE', 'isHostedBy', 'pid_graph:IBDB7BF60', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R37757D31', 'isHostedBy', 'pid_graph:I2507A2E2', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R3C16BAE8', 'isHostedBy', 'pid_graph:I3EA5A51E', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R3C4E36F1', 'isHostedBy', 'pid_graph:I9E6237D3', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R3CD417A6', 'isHostedBy', 'pid_graph:I207B6CC5', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R3E699C22', 'isHostedBy', 'pid_graph:I079E93BB', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R3F468038', 'isHostedBy', 'pid_graph:IAD939157', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R421A41C3', 'isHostedBy', 'pid_graph:IB3056136', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R42DB2A2E', 'isHostedBy', 'pid_graph:IA582A441', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R452B32DC', 'isHostedBy', 'pid_graph:I07348EBE', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R48F8B78F', 'isHostedBy', 'pid_graph:I298D3279', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R4B9D7776', 'isHostedBy', 'pid_graph:IBD40288E', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R4D8059D5', 'isHostedBy', 'pid_graph:I918CB463', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R4DE67922', 'isHostedBy', 'pid_graph:I2D6032E9', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R4E9828AD', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R4F125F9F', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R50DBC771', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R53136BAE', 'isHostedBy', 'pid_graph:I4D47D596', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R54DDFE0F', 'isHostedBy', 'pid_graph:I25BA36ED', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R556B4009', 'isHostedBy', 'pid_graph:IBC766F78', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R5AC37384', 'isHostedBy', 'pid_graph:I926AE942', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R5B020C66', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R606E3A09', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R639F433B', 'isHostedBy', 'pid_graph:IA2A73129', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R64ABE777', 'isHostedBy', 'pid_graph:IADCE6ED7', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R673F8F1B', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R6BEE856A', 'isHostedBy', 'pid_graph:I207B6CC5', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R6C247A41', 'isHostedBy', 'pid_graph:I9E6237D3', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R6D2EDC33', 'isHostedBy', 'pid_graph:ID4D98330', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R7058EDA4', 'isHostedBy', 'pid_graph:IA1C83F02', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R735188BC', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R75DE81B0', 'isHostedBy', 'pid_graph:ICDF83ECB', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R7B15D54B', 'isHostedBy', 'pid_graph:I36192DBA', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R7BF49500', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R7C150A8C', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R7CE999A3', 'isHostedBy', 'pid_graph:I20E88EB0', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R7CE999A3', 'isHostedBy', 'pid_graph:I25953F14', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R7CE999A3', 'isHostedBy', 'pid_graph:I3ECA4ACA', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R7E8ECC16', 'isHostedBy', 'pid_graph:I420F6D3A', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R84DB34AC', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R865711ED', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R893CB252', 'isHostedBy', 'pid_graph:I087B7BE1', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R8C7DE125', 'isHostedBy', 'pid_graph:I926AE942', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R8EF6604A', 'isHostedBy', 'pid_graph:I19CD95A1', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R9125C71B', 'isHostedBy', 'pid_graph:ID9571C71', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R94543D01', 'isHostedBy', 'pid_graph:I7B8A5547', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R94A262A0', 'isHostedBy', 'pid_graph:IDC6E2162', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R94B67752', 'isHostedBy', 'pid_graph:I9967B1AE', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R970952E2', 'isHostedBy', 'pid_graph:I880DF298', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R97EE5381', 'isHostedBy', 'pid_graph:I15CDF37B', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R98F0AF45', 'isHostedBy', 'pid_graph:I33067688', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R9B691867', 'isHostedBy', 'pid_graph:I6560BB01', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R9B71826B', 'isHostedBy', 'pid_graph:I29EF23D2', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R9D9F7435', 'isHostedBy', 'pid_graph:IA11B6598', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R9F266D24', 'isHostedBy', 'pid_graph:I880DF298', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:R9F98C519', 'isHostedBy', 'pid_graph:IA2B22BFE', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RA0476B5C', 'isHostedBy', 'pid_graph:ID0604D95', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RB485C907', 'isHostedBy', 'pid_graph:I23B0E96B', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RB6F97F6D', 'isHostedBy', 'pid_graph:I880DF298', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RB72F15C8', 'isHostedBy', 'pid_graph:I4B5BE24E', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RB7AF542E', 'isHostedBy', 'pid_graph:ICDF83ECB', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RBC19BCE8', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RC4517C11', 'isHostedBy', 'pid_graph:IFE597F18', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RC4A84871', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RC52180B3', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RCB580056', 'isHostedBy', 'pid_graph:I08098C69', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RCEFFFBBA', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RCF99DD66', 'isHostedBy', 'pid_graph:I4D47D596', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RD57A11D2', 'isHostedBy', 'pid_graph:IF85958DA', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RD6229772', 'isHostedBy', 'pid_graph:I302C7508', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RDA3F8D57', 'isHostedBy', 'pid_graph:I3EA5A51E', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RDC43E39A', 'isHostedBy', 'pid_graph:IC57E1818', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RDFC37F26', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RE125C01D', 'isHostedBy', 'pid_graph:I52AE2E47', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RE32E1871', 'isHostedBy', 'pid_graph:IADCE6ED7', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RE44E4DEB', 'isHostedBy', 'pid_graph:I0C6FE434', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RE5DC52A1', 'isHostedBy', 'pid_graph:IBDB7BF60', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RE7CA9ADB', 'isHostedBy', 'pid_graph:I28268410', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RE8C7548A', 'isHostedBy', 'pid_graph:I72070B45', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RE9CD7FBB', 'isHostedBy', 'pid_graph:I4B5BE24E', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RF02894C2', 'isHostedBy', 'pid_graph:I48D43ACE', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RF19ABA30', 'isHostedBy', 'pid_graph:IE8621CEA', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RF735C567', 'isHostedBy', 'pid_graph:IA11B6598', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RF8C99FF2', 'isHostedBy', 'pid_graph:I4852644F', '0000-0002-0255-5101', '10/02/2025 10:24:55');
INSERT INTO k_Institution_Resolver(ID_INS_RES, lod_RES, lodRelation, lodINS, populatedBy, lastTouch) VALUES (NULL, 'pid_graph:RFB670458', 'isHostedBy', 'pid_graph:I526EA97E', '0000-0002-0255-5101', '10/02/2025 10:24:55');

