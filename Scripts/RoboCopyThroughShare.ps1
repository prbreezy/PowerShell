robocopy /MIR $SharePath $LocalPath /log:"l:\Logs_$(get-date -f yyyy-MM-dd).log"
