# ------------------------------------------------------------------------
# AUTHOR: PrBreezy,
# DATE: 25/11/2015
#
# KEYWORDS: AWS, S3, Sync
#
# COMMENTS: This script copy all documents from a remote server and sync them on S3
# 
# http://docs.aws.amazon.com/cli/latest/reference/s3/sync.html
#
# Few more step(s) need to be done before running this script:
#	- Set AWS Access key to be able to upload to S3
#	- Verify that the server have access to the remote computer and shared folder
# ---------------------------------------------------------------------
aws s3 cp s3://mybuckets3/Server1/ d:\Server1 --recursive 
