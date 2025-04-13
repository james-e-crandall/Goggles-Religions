/*
DROP TRIGGER OnTypeInsert;
CREATE TRIGGER OnTypeInsert AFTER INSERT ON Types BEGIN UPDATE Types SET Hash = random() Where Type = New.Type; END;
*/

UPDATE AgeProgressionMilestones
set RequiredPathPoints = RequiredPathPoints * 2
WHERE AgeProgressionMilestones.AgeProgressionMilestoneType="EXPLORATION_CULTURE_MILESTONE_1";

UPDATE AgeProgressionMilestones
set RequiredPathPoints = RequiredPathPoints * 2
WHERE AgeProgressionMilestones.AgeProgressionMilestoneType="EXPLORATION_CULTURE_MILESTONE_2";

UPDATE AgeProgressionMilestones
set RequiredPathPoints = RequiredPathPoints * 2
WHERE AgeProgressionMilestones.AgeProgressionMilestoneType="EXPLORATION_CULTURE_MILESTONE_3";


-- Need to adjust number of slots added 
-- SLOTS_ON_TEMPLES_IN_CITY_FROM_PROJECT
-- Look in modifiers table










