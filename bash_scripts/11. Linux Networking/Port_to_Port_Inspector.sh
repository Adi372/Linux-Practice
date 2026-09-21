echo
echo "===== PORT → PROCESS ====="
echo

sudo ss -tulnp | awk '
/users:/ {

    # Get port
    split($5, a, ":")
    port = a[length(a)]

    # Get process information
    split($0, b, "users:\\(\\(")
    split(b[2], p, ",")

    process = p[1]
    pid = p[2]

    gsub(/"/, "", process)
    gsub(/pid=/, "", pid)

    printf "Port: %s\n", port
    printf "Process: %s\n", process
    printf "PID: %s\n\n", pid
}'