# README

I want to mention that in a perfect world I wouldn't do image resizing on an app server.

I would rather upload pics directly to S3. http://stackoverflow.com/questions/17585881/amazon-s3-direct-file-upload-from-client-browser-private-key-disclosure

And then use AWS lambda for image resizing. http://blog.kaliloudiaby.com/index.php/serverless-image-resizing-aws-lambda-and-aws-s3/
