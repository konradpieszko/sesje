local llKoniec
llKoniec = (MESSAGEBOX("Czy chcesz zako�czy� prac� programu ?",36,_screen.Caption)=6)
IF llKoniec
	ON SHUTDOWN	&& unikamy "zap�tlenia" funkcji
	CLEAR EVENTS
ENDIF
RETURN llKoniec