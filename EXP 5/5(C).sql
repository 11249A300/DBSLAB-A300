-- ─── BACKUP ─────────────────────────────────────────────────────────
-- Backup a single database
mysqldump -u root -p CollegeDB > college_backup.sql
-- Backup specific tables
mysqldump -u root -p CollegeDB Student Course > tables_backup.sql
-- Backup ALL databases
mysqldump -u root -p --all-databases > all_backup.sql
-- Backup with structure only (no data)
mysqldump -u root -p --no-data CollegeDB > schema_only.sql
-- Backup with data only (no structure)
mysqldump -u root -p --no-create-info CollegeDB > data_only.sql
-- ─── RESTORE ─────────────────────────────────────────────────────────
-- Restore into an existing database
mysql -u root -p CollegeDB < college_backup.sql
-- Create new DB and restore (two steps):
mysql -u root -p -e "CREATE DATABASE CollegeDB_New;"
mysql -u root -p CollegeDB_New < college_backup.sql
-- ─── INSIDE MySQL shell: import a .sql file ──────────────────────────
USE CollegeDB;
SOURCE /path/to/college_backup.sql;
-- ─── CHECK BACKUP FILE ───────────────────────────────────────────────
-- In terminal: head -20 college_backup.sql
