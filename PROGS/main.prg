ON SHUTDOWN  DO "c:\documents and settings\konrad pieszko\moje dokumenty\my dropbox\sesje program\progs\czykoniec.prg"

DO FORM "c:\documents and settings\konrad pieszko\moje dokumenty\my dropbox\sesje program\forms\glowneokno.scx" NAME glowneokno
glowneokno.Release()
RELEASE glowneokno
DO FORM "c:\documents and settings\konrad pieszko\moje dokumenty\my dropbox\sesje program\forms\glowneokno.scx" NAME glowneokno1

READ events
close databases

QUIT
