# Web Monitoring: Monitor Web Page for Changes

This Bash script is designed to be executed by a task scheduler such as [cron](https://crontab.guru/) and it does the following:

1. Execute [curl](https://curl.se/docs/manpage.html) to download a copy of the web page of interest.
2. Use [sha256sum](https://linux.die.net/man/1/sha256sum) to compute a SHA 256-bit checksum with the downloaded web page.
3. Compare the checksum with a previous build if one exists and on mismatch use [mail](https://linux.die.net/man/1/mail) to send a notification email to the predefined recipient. Otherwise if no previous build exists, save the checksum for future matching.

A detailed walk-though is available [here](https://kurtcms.org/web-monitoring-monitor-web-page-for-changes/).

<img src="https://kurtcms.org/git/web-monitor/web-monitor-screenshot.png" width="550">
