# fix folder permissions so OMZ doesn't complain
if command -v compaudit >/dev/null 2>&1; then
    compaudit | xargs chmod g-w,o-w
fi
