#!/usr/bin/env bash
# Call publicrecords/spotify-play-count-scraper on YOUR Apify account. Set APIFY_TOKEN. Do not commit the token.
set -euo pipefail
: "${APIFY_TOKEN:?Set APIFY_TOKEN to your own Apify token}"
curl -sS -X POST \
  "https://api.apify.com/v2/acts/publicrecords~spotify-play-count-scraper/run-sync-get-dataset-items?token=${APIFY_TOKEN}" \
  -H "Content-Type: application/json" \
  -d '{"urls": ["https://open.spotify.com/album/4aawyAB9vmqN3uQ7FjRGTy"], "maxTracksPerTarget": 50}'
