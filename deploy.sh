mkdir ./temp-deploy
cp -r \
    ./assets \
    ./images \
    ./favicon.ico \
    ./index.html \
    ./learn-more.html \
    ./mailing-list.html \
    ./mentorship.html \
    ./temp-deploy
AWS_PROFILE=personal aws s3 sync ./temp-deploy s3://win-website/
rm -r ./temp-deploy