-- Verify cccs_service_area:001 on pg

BEGIN;

	-- Check columns expected available in table
	SELECT id, acronym, name, official_desc, way
		FROM cccs.service_area
		WHERE False;

ROLLBACK;
