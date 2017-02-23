set arg1=%1
/masm32/bin/ml /c /coff /cp /zi %arg1%.asm
/masm32/bin/link.exe /SUBSYSTEM:console /debug %arg1%