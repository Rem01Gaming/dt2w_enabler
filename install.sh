#!/system/bin/sh
SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=true
REPLACE="

"
sleep 2
ui_print ""
ui_print "************************************"
ui_print "             DT2W Enabler            "
ui_print "************************************"
ui_print "     By Telegram @Rem01Gaming     "
ui_print "************************************"
ui_print ""
sleep 2

ui_print "- Extracting module files"
unzip -o "$ZIPFILE" 'service.sh' -d "$MODPATH" >&2
set_perm_recursive $MODPATH 0 0 0777 0777
