#!/bin/bash

# .scripts/audit-footers.sh

# --- CONFIGURATION ---
# Define the "golden" footer using a 'here document'.
read -r -d '' GOLDEN_FOOTER <<'EOF'
---
---
###### Copyright © 2025 Jadon.M.Banninga. All Rights Reserved.

###### This document is part of the Dominion Covenant project. Unauthorized reproduction, distribution, or adaptation of this work is prohibited.
EOF

FOOTER_LINES=$(echo "$GOLDEN_FOOTER" | wc -l)

# --- SCRIPT LOGIC ---
echo "Starting copyright footer audit on 'charters' and 'model_legislation' directories..."

FAILURES_FILE=$(mktemp)

# This 'find' command is now restricted to search ONLY within the specified directories.
# As a result, the old 'EXCLUDE_FILES' list is no longer needed.
find ./charters ./model_legislation -type f -name "*.md" | while IFS= read -r file; do
  
  ACTUAL_FOOTER=$(tail -n "$FOOTER_LINES" "$file")

  if [ "$ACTUAL_FOOTER" != "$GOLDEN_FOOTER" ]; then
    echo "-------------------------------------------------------------"
    echo "ERROR: Footer mismatch in file: $file"
    echo "--- EXPECTED FOOTER ---"
    echo "$GOLDEN_FOOTER"
    echo "--- ACTUAL FOOTER ---"
    echo "$ACTUAL_FOOTER"
    echo "-------------------------------------------------------------"
    echo "$file" >> "$FAILURES_FILE"
  else
    echo "OK: Footer check passed for: $file"
  fi
done

if [ -s "$FAILURES_FILE" ]; then
  echo "FAILURE: One or more files have incorrect or missing footers. Please review the logs above."
  rm "$FAILURES_FILE"
  exit 1
else
  echo "SUCCESS: All footers are correct and consistent."
  rm "$FAILURES_FILE"
  exit 0
fi