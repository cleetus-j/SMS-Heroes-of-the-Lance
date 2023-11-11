clear

wla-z80 -o 'HOTL.o' 'HOTL_mod.asm'
echo [objects] > linkfile
echo 'HOTL.o' >>linkfile
wlalink linkfile HOTL_mod.sms
cp HOTL_mod.sms /media/work/devver/disas/HOTL/smsexamine

