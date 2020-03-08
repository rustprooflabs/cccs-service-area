-- Revert cccs_service_area:001 from pg

BEGIN;

	DROP SCHEMA cccs CASCADE;

COMMIT;
