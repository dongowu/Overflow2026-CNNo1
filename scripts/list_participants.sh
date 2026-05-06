#!/bin/bash
# List all participants from the submissions directory
# 扫描 submissions 目录列出所有参赛者

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
SUBMISSIONS_DIR="$REPO_ROOT/submissions"

if [ ! -d "$SUBMISSIONS_DIR" ]; then
  echo "Error: submissions/ directory not found"
  exit 1
fi

echo "=========================================="
echo "  Sui Overflow 2026 - CN Participants"
echo "  参赛者列表"
echo "=========================================="
echo ""

# Collect participant directories (exclude _template and files)
participants=()
tracks=()

for dir in "$SUBMISSIONS_DIR"/*/; do
  dirname=$(basename "$dir")
  # Skip template directory
  if [ "$dirname" = "_template" ]; then
    continue
  fi
  # Skip if not a valid directory name
  if [ -z "$dirname" ]; then
    continue
  fi
  participants+=("$dirname")

  # Try to extract track from README
  readme="$dir/README.md"
  if [ -f "$readme" ]; then
    # Find the checked track (line with [x] or [X])
    track=$(grep -i '\[x\]' "$readme" | sed 's/.*\[x\][[:space:]]*//' | xargs)
    if [ -z "$track" ]; then
      track="(未选择 / Not selected)"
    fi
  else
    track="(无 README)"
  fi
  tracks+=("$track")
done

count=${#participants[@]}

if [ $count -eq 0 ]; then
  echo "  暂无参赛者 / No participants yet"
  echo ""
  echo "  成为第一个！复制 submissions/_template/ 开始"
  echo "  Be the first! Copy submissions/_template/ to get started"
else
  echo "  GitHub ID                    | Track / 赛道"
  echo "  ---------------------------- | ----------------------------"
  for i in $(seq 0 $((count - 1))); do
    printf "  %-28s | %s\n" "${participants[$i]}" "${tracks[$i]}"
  done
fi

echo ""
echo "=========================================="
echo "  Total / 总计: $count participants / 名参赛者"
echo "=========================================="
