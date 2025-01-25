#!/usr/bin/env bash

echo "-------------------------"
echo "Now merging all created PRs..."
for PR_NUMBER in {300..400}; do
  echo "Merging PR #$PR_NUMBER..."
  
  # Attempt to merge using a merge commit (remove --auto if branch protections block it)
  gh pr merge "$PR_NUMBER" --merge
  
  if [ $? -eq 0 ]; then
    echo "PR #$PR_NUMBER merged successfully."
  else
    echo "Failed to merge PR #$PR_NUMBER."
  fi
  
  sleep 2
done

echo "-------------------------"
echo "All done! Created and (attempted to) merged $NUM_PRS pull requests."