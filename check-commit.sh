MSG_FILE=$1
COMMIT_MSG="$(cat $MSG_FILE)"
# Initialize constants here
export REGEX='^(feat|fix|docs|style|refactor|test|chore):*.+$'
export ERROR_MSG="커밋 메세지를 컨벤션에 맞게 작성해주세요."
if [[ $COMMIT_MSG =~ $REGEX ]]; then
  exit 0
else
  echo "Bad commit : $COMMIT_MSG" | head -n 1
  echo $ERROR_MSG
  exit 1
fi