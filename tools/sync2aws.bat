@echo off
echo ========================
echo === Sync to AWS / S3 ===
echo ========================
echo.

aws s3 sync ../webroot s3://www.jannavratil.com --delete --acl public-read --dryrun
