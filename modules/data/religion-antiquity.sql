/*
DROP TRIGGER OnTypeInsert;
CREATE TRIGGER OnTypeInsert AFTER INSERT ON Types BEGIN UPDATE Types SET Hash = random() Where Type = New.Type; END;
*/

-- One Copy

-- SELECT "_rowid_",* FROM "main"."Criteria" LIMIT 49999 OFFSET 0;


-- SELECT *
-- FROM Criteria
-- JOIN Criterion on Criterion.CriteriaRowId = Criteria.CriteriaRowId


-- SELECT "_rowid_",* FROM "main"."Criterion" WHERE "CriteriaRowId" LIKE '%798%' ESCAPE '\' AND "CriterionRowId" LIKE '%1238%' ESCAPE '\' LIMIT 49999 OFFSET 0;


-- SELECT "_rowid_",* FROM "main"."Criteria" WHERE "CriteriaRowId" LIKE '%798%' ESCAPE '\' LIMIT 49999 OFFSET 0;


-- UPDATE ProgressionTreeNodeUnlocks
-- SET TargetType="EFFECT_ADD_BELIEF"
-- WHERE ProgressionTreeNodeType="NODE_CIVIC_AQ_MAIN_MYSTICISM"
-- AND TargetKind="KIND_MODIFIER" 
-- AND TargetType="MOD_PANTHEON_UNLOCK";



INSERT INTO Types
(Type, Kind)
SELECT BeliefType || "_1", "KIND_BELIEF"
FROM Beliefs;

INSERT INTO Beliefs
("BeliefType", "BeliefClassType", "Description","Name")
SELECT BeliefType || "_1", BeliefClassType, Description, Name
FROM Beliefs;

INSERT INTO BeliefModifiers
(BeliefType, ModifierID)
SELECT BeliefType || "_1", ModifierID
FROM BeliefModifiers;

INSERT INTO Belief_Priorities
(BeliefType, ListType)
SELECT BeliefType || "_1", ListType
FROM Belief_Priorities;

--Two Copy

INSERT INTO Types
(Type, Kind)
SELECT BeliefType || "_2", "KIND_BELIEF"
FROM Beliefs;

INSERT INTO Beliefs
("BeliefType", "BeliefClassType", "Description","Name")
SELECT BeliefType || "_2", BeliefClassType, Description, Name
FROM Beliefs;

INSERT INTO BeliefModifiers
(BeliefType, ModifierID)
SELECT BeliefType || "_2", ModifierID
FROM BeliefModifiers;

INSERT INTO Belief_Priorities
(BeliefType, ListType)
SELECT BeliefType || "_2", ListType
FROM Belief_Priorities;










