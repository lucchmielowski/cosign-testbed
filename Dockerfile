FROM alpine:3.20

WORKDIR /app

# There is no strict need for the annotation script inside the image,
# but copying the repo in keeps the image content tied to this repo.
COPY . .

CMD ["sh", "-c", "echo 'gh-annotation-test image built from $GITHUB_SHA'"]


