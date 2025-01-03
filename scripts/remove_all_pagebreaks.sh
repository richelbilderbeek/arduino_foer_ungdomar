#!/bin/bash
find . -name "*.md" -type f | xargs sed -i -e '/\pagebreak/d'
