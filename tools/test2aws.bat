@echo off
echo ========================
echo === Sync to AWS / S3 ===
echo ========================
echo.

aws s3 sync webroot-test s3://test2.jannavratil.com --acl public-read 
rem --dryrun
