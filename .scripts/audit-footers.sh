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

EXCLUDE_FILES=(
  "./TREE.md"
  "./ACKNOWLEDGMENTS.md"
  "./LICENSE.md"
)

# --- SCRIPT LOGIC ---
echo "Starting copyright footer audit..."

FAILURES_FILE=$(mktemp)

find . -type f -name "*.md" ! -path "./.git/*" ! -path "./.scripts/*" | while IFS= read -r file; do
  is_excluded=false
  for excluded_file in "${EXCLUDE_FILES[@]}"; do
    if [[ "$file" == "$excluded_file" ]]; then
      is_excluded=true
      break
    fi
  done

  if [ "$is_excluded" = true ]; then
    echo "INFO: Skipping excluded file: $file"
    continue
  fi

  ACTUAL_FOOTER=$(tail -n "$FOOT_LINES" "$file")

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