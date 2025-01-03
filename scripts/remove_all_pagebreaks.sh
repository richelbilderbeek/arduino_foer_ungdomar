#!/bin/bash
find . -name "*.md" -type f -print0 | xargs sed -i -e '/\pagebreak/d'
