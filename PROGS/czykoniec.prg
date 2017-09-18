local llKoniec
llKoniec = (MESSAGEBOX("Czy chcesz zakoñczyæ pracê programu ?",36,_screen.Caption)=6)
IF llKoniec
	ON SHUTDOWN	&& unikamy "zapêtlenia" funkcji
	CLEAR EVENTS
ENDIF
RETURN llKoniec