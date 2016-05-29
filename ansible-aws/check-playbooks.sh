#!/bin/bash
set -e

# Check the playbooks for syntax errors.

hash ansible-playbook 2>/dev/null || { echo >&2 "I require ansible-playbook, but it's not installed. Aborting."; exit 1; }
hash ansible-lint 2>/dev/null || { echo >&2 "I require ansible-lint, but it's not installed. Aborting."; exit 1; }

while IFS= read -r -d '' PLAYBOOK
do
	echo "$PLAYBOOK"
	#if [[ $PLAYBOOK != playbooks/roles/* ]]; then
		ansible-playbook "$PLAYBOOK" --syntax-check >/dev/null
	#fi
	ansible-lint "$PLAYBOOK"
done < <(find playbooks -name "*.yml" -print0)
